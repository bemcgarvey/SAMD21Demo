/*******************************************************************************
  Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This file contains the "main" function for a project.

  Description:
    This file contains the "main" function for a project.  The
    "main" function calls the "SYS_Initialize" function to initialize the state
    machines of all modules in the system
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes


// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

void buttonCallback(uintptr_t context);
void adcCallback(ADC_STATUS status, uintptr_t context);

enum {ACTIVE, STANDBY};

volatile uint8_t mode = ACTIVE;
volatile bool sample = false;
volatile bool overAlarm = false;

int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    printf("Starting sleepwalking demo\r\n");
    EIC_CallbackRegister(EIC_PIN_1, buttonCallback, (uintptr_t) NULL);
    EIC_InterruptEnable(EIC_PIN_1);
    EIC_InterruptEnable(EIC_PIN_0);
    ADC_CallbackRegister(adcCallback, (uintptr_t) NULL);
    ADC_Enable();
    RTC_Timer32Start();
    while ( true )
    {
        GreenLed_Set();
        if (mode == STANDBY) {
            GreenLed_Clear();
            printf("Standby\r\n");
            while (!SERCOM1_USART_TransmitComplete());
            PM_StandbyModeEnter();
            printf("Wake up\r\n");
            mode = ACTIVE;
        }
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}

void buttonCallback(uintptr_t context) {
    mode = STANDBY;
}

void adcCallback(ADC_STATUS status, uintptr_t context) {
    if (status & ADC_STATUS_WINMON) {
        if (!overAlarm) {
            RedLed_Set();
            overAlarm = true;
            ADC_WindowModeSet(ADC_WINMODE_LESS_THAN_WINUT);
        } else {
            RedLed_Clear();
            overAlarm = false;
            ADC_WindowModeSet(ADC_WINMODE_GREATER_THAN_WINLT);
        }
    }
}
/*******************************************************************************
 End of File
*/

