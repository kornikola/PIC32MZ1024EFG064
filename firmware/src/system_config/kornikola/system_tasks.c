#include "system_config.h"
#include "system_definitions.h"


void SYS_Tasks ( void )
{
   
    SYS_FS_Tasks();
    
    SYS_TMR_Tasks(sysObj.sysTmr);

    DRV_MIIM_Tasks (sysObj.drvMiim);

    TCPIP_STACK_Task(sysObj.tcpip);

    APP_Tasks();
}


