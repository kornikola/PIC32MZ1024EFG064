#ifndef _DRV_ADC_STATIC_H
#define _DRV_ADC_STATIC_H

#include <stdbool.h>
#include "system_config.h"
#include "peripheral/adchs/plib_adchs.h"

typedef enum {

    DRV_ADC_ID_1 = ADCHS_ID_0,
    DRV_ADCHS_NUMBER_OF_MODULES

} DRV_ADC_MODULE_ID;


void DRV_ADC_Initialize(void);

inline void DRV_ADC_DeInitialize(void);

inline void DRV_ADC0_Open(void);
inline void DRV_ADC0_Close(void);

inline void DRV_ADC1_Open(void);
inline void DRV_ADC1_Close(void);

inline void DRV_ADC5_Open(void);
inline void DRV_ADC5_Close(void);

inline void DRV_ADC_Start(void);
inline void DRV_ADC_Stop(void);


uint32_t DRV_ADC_SamplesRead(uint8_t bufIndex);

bool DRV_ADC_SamplesAvailable(uint8_t bufIndex);






#endif // #ifndef _DRV_ADC_STATIC_H

/*******************************************************************************
 End of File
*/
