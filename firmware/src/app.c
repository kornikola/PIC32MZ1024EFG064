#include "app.h"
#include <stdio.h>
#include <string.h>

#define SERVER_PORT 9760

APP_DATA appData;


bool automaticSwitch1 = true;
bool automaticSwitch2 = true;

void APP_Initialize(void)
{
    appData.state = APP_TCPIP_WAIT_INIT;

    DRV_ADC0_Open();
    DRV_ADC1_Open();
    DRV_ADC5_Open();
    
}


void udpServer()
{
    SYS_STATUS tcpipStat;
    
    static IPV4_ADDR dwLastIP[2] = { {-1}, {-1} };
    IPV4_ADDR ipAddr;
    int i;
    int nNets;
    TCPIP_NET_HANDLE netH;

    switch(appData.state)
    {
        case APP_TCPIP_WAIT_INIT:
            tcpipStat = TCPIP_STACK_Status(sysObj.tcpip);
            if(tcpipStat < 0)
            { 
                appData.state = APP_TCPIP_ERROR;
            }
            else if(tcpipStat == SYS_STATUS_READY)
            {
                nNets = TCPIP_STACK_NumberOfNetworksGet();
                for(i = 0; i < nNets; i++)
                {
                    netH = TCPIP_STACK_IndexToNet(i);
                }
                appData.state = APP_TCPIP_WAIT_FOR_IP;
            }
            break;

        case APP_TCPIP_WAIT_FOR_IP:
            nNets = TCPIP_STACK_NumberOfNetworksGet();
            for (i = 0; i < nNets; i++)
            {
                netH = TCPIP_STACK_IndexToNet(i);
                if(!TCPIP_STACK_NetIsReady(netH))
                {
                    return;    
                }
                ipAddr.Val = TCPIP_STACK_NetAddress(netH);
                
                if(dwLastIP[i].Val != ipAddr.Val)
                {
                    dwLastIP[i].Val = ipAddr.Val;
                }
            }
            appData.state = APP_TCPIP_OPENING_SERVER;
            break;

        case APP_TCPIP_OPENING_SERVER:
            appData.socket = TCPIP_TCP_ServerOpen(IP_ADDRESS_TYPE_IPV4, SERVER_PORT, 0);
            if (appData.socket == INVALID_SOCKET)
            {
                break;
            }
            appData.state = APP_TCPIP_WAIT_FOR_CONNECTION;
            break;

        case APP_TCPIP_WAIT_FOR_CONNECTION:
            if (TCPIP_TCP_IsConnected(appData.socket))
            {
                appData.state = APP_TCPIP_SERVING_CONNECTION;
            }
            break;

        case APP_TCPIP_SERVING_CONNECTION:
        {
            if (!TCPIP_TCP_IsConnected(appData.socket))
            {
                appData.state = APP_TCPIP_CLOSING_CONNECTION;
                
                break;
            }
            
            int16_t wMaxGet; 
            int16_t wMaxPut;
            int16_t wCurrentChunk;
            uint16_t w1;
            uint16_t w2;
            uint8_t AppBuffer[32];
           
            wMaxGet = TCPIP_TCP_GetIsReady(appData.socket);	
            wMaxPut = TCPIP_TCP_PutIsReady(appData.socket);	

            if(wMaxPut < wMaxGet)
            {
                wMaxGet = wMaxPut;
            }   
                
            wCurrentChunk = sizeof(AppBuffer);
            
            for(w1 = 0; w1 < wMaxGet; w1 += sizeof(AppBuffer))
            {
                
                if(w1 + sizeof(AppBuffer) > wMaxGet)
                {
                    wCurrentChunk = wMaxGet - w1;
                }
               
                TCPIP_TCP_ArrayGet(appData.socket, AppBuffer, wCurrentChunk);

                
                for(w2 = 0; w2 < wCurrentChunk; w2++)
                {   
                    
                    char stringResult[16];
                    snprintf(stringResult, sizeof(stringResult), "%d\n", w2);
                    TCPIP_TCP_ArrayPut(appData.socket, (uint8_t*)stringResult, strlen(stringResult));
                    
                    
                    if(AppBuffer[0] == '$'&& AppBuffer[w2] == '#')
                    {   
                        
                            if(AppBuffer[1] == 'I')
                            {
                                TCPIP_TCP_ArrayPut(appData.socket, "$IA#\n", 5);
                                break;
                            }
                            else if(AppBuffer[1] == '2')
                            {
                                Valve1_2Off();
                                
                                break;
                            }
                            else if (AppBuffer[1] == '3')
                            {
                                Valve1_2On();
                                
                                break;

                            }
                            else if (AppBuffer[1] == '4')
                            {

                                char stringResult[16];
                                snprintf(stringResult, sizeof(stringResult), "%d\n", adcValue1);
                                TCPIP_TCP_ArrayPut(appData.socket, (uint8_t*)stringResult, strlen(stringResult));
                                
                                break;
                            }
                            else if (AppBuffer[1] == '5')
                            {
                                char stringResult[16];
                                snprintf(stringResult, sizeof(stringResult), "%d\n", adcValue2);
                                TCPIP_TCP_ArrayPut(appData.socket, (uint8_t*)stringResult, strlen(stringResult));
                                break;
                            }
                            else if (AppBuffer[1] == '6')
                            {
                                char stringResult[16];
                                snprintf(stringResult, sizeof(stringResult), "%d\n", adcVolt);
                                TCPIP_TCP_ArrayPut(appData.socket, (uint8_t*)stringResult, strlen(stringResult));
                                break;
                            }
                            else if (AppBuffer[1] == 'Q')
                            {
                                TCPIP_TCP_ArrayPut(appData.socket, "Connection was closed\n", 22);
                                appData.state = APP_TCPIP_CLOSING_CONNECTION;
                                break;
                            }
                             else
                            {
                                TCPIP_TCP_ArrayPut(appData.socket, "$ERROR#\n", 8);
                            }
                        
                        
                        

                    } 
                    else
                    {
                        TCPIP_TCP_ArrayPut(appData.socket, "$ERROR($)#\n", 11);
                    }

                }

            }

        }
        break;
        
        
        case APP_TCPIP_CLOSING_CONNECTION:
        {
            TCPIP_TCP_Close(appData.socket);
            appData.socket = INVALID_SOCKET;
            appData.state = APP_TCPIP_OPENING_SERVER; 
            

        }
        break;

        default:
            break;
    }
}


void Set_LED_Status(void)
{
    if (automaticSwitch1 == true)
    {
        if (adcValue1 > 512) 
        {
            Valve1_2Off();
            Valve1_1On();
        }  
        
        else 
        {    
            Valve1_2On();
            Valve1_1Off();
        }
        
    }    
    else
    {
        
    }
    
    
    if (automaticSwitch2 == true)
    {
        if (adcValue2 > 512) 
        {
            Valve2_2Off();
            Valve2_1On();
            
            
        }
        else 
        {    
            Valve2_2On();
            Valve2_1Off();
        }
    }
    else
    {
        
    }
    
}


void adcPeripheral(void)
{
    
    
    DRV_ADC_Start();
    
    if (DRV_ADC_SamplesAvailable(4) == true)
    {
        adcValue1 = DRV_ADC_SamplesRead(4);
    }
    
     if (DRV_ADC_SamplesAvailable(11) == true)
    {
        adcValue2 = DRV_ADC_SamplesRead(11);
    }

    if (DRV_ADC_SamplesAvailable(46) == true)
    {
        adcVolt = DRV_ADC_SamplesRead(46);  
    }

   
    
//    DRV_ADC_Stop();
    Set_LED_Status();
            
}


void APP_Tasks(void)
{
    udpServer();
    adcPeripheral();
}
