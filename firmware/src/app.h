#ifndef _APP_H
#define _APP_H


#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include "system_config.h"
#include "system_definitions.h"

// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility

extern "C" {

#endif


uint16_t adcValue1; 
uint16_t adcValue2; 
uint16_t adcVolt;

bool status1 = true;
bool status2 = true;

typedef enum
{

	APP_STATE_INIT=0,
	APP_STATE_SERVICE_TASKS,
            
    APP_TCPIP_OPENING_SERVER,
            
    APP_TCPIP_WAIT_INIT,
    /* In this state, the application waits for a IP Address */
    APP_TCPIP_WAIT_FOR_IP,

    APP_BSD_CREATE_SOCKET,

    APP_BSD_BIND,

    APP_TCPIP_WAIT_FOR_CONNECTION,

    APP_TCPIP_SERVING_CONNECTION,

    APP_TCPIP_CLOSING_CONNECTION,
            
    APP_TCPIP_ERROR,
    
            
            
    APP_STATE_SPIN,
            
    APP_STATE_UPDATE_ADC_AVERAGE,
            
            
            
} APP_STATES;



typedef struct
{
    /* The application's current state */
    APP_STATES state;

    SOCKET socket;
    
    
    
    
    bool dataReady;
} APP_DATA;



typedef struct
{
	//SYS_MODULE_OBJ   drvObject;
	 
} APP_DRV_OBJECTS;



void APP_Initialize ( void );



void APP_Tasks( void );



extern APP_DRV_OBJECTS appDrvObject;

extern APP_DATA appData;


#endif /* _APP_H */

//DOM-IGNORE-BEGIN
#ifdef __cplusplus
}
#endif
//DOM-IGNORE-END

/*******************************************************************************
 End of File
 */

