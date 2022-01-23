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
#include "lcd.h"

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

void TC3Callback(TC_TIMER_STATUS status, uintptr_t context);
void ACCallback(uint8_t int_flags, uintptr_t context);

bool updateCount = false;
int count = 0;

bool forward = true;
uint32_t dc = 0;
uint32_t max_dc;
uint32_t dc_step;

int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    RedLed_Set();
    LCDInit();
    lprintf(0, "Hello World");
    printf("Starting demo:\r\n");
    printf("  r = toggle red led\r\n");
    printf("  +/- to change pwm duty cycle\r\n");
    printf("  PA16 button changes direction\r\n");
    TC3_TimerCallbackRegister(TC3Callback, (uintptr_t) NULL);
    TC3_TimerStart();
    AC_CallbackRegister(ACCallback, (uintptr_t) NULL);
    AC_Start(AC_CHANNEL0);
    max_dc = TCC0_PWM24bitPeriodGet();
    dc_step = max_dc / 20;
    TCC0_PWM24bitDutySet(TCC0_CHANNEL0, dc);
    TCC0_PWMPatternSet(0b1110, 0b1000);  //forward
    TCC0_PWMStart();
    while ( true )
    {
        char rx;
        if (SERCOM1_USART_ReceiverIsReady()) {
            rx = SERCOM1_USART_ReadByte();
            switch (rx) {
                case 'r': 
                    RedLed_Toggle();
                    break;
                case '+':
                    dc += dc_step;
                    if (dc > max_dc) {
                        dc = max_dc;
                    }
                    TCC0_PWM24bitDutySet(TCC0_CHANNEL0, dc);
                    break;
                case '-':
                    dc -= dc_step;
                    if (dc >= max_dc) {  //we went below 0 but dc is unsigned so...
                        dc = 0;
                    }
                    TCC0_PWM24bitDutySet(TCC0_CHANNEL0, dc);
                    break;  
            }
        }
        if (!Button2_Get()) {
            GreenLed_Set();
        } else {
            GreenLed_Clear();
        }
        if (!Button1_Get() && forward) {
            forward = false;
            TCC0_PWMPatternSet(0b1101, 0b0100);
        } else if (Button1_Get() && !forward) {
            forward = true;
            TCC0_PWMPatternSet(0b1110, 0b1000);
        }
        if (updateCount) {
            updateCount = false;
            lprintf(1, "%d", count);
        }
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


void TC3Callback(TC_TIMER_STATUS status, uintptr_t context) {
    BlueLed_Toggle();
    ++count;
    updateCount = true;
}

void ACCallback(uint8_t int_flags, uintptr_t context) {
    YellowLed_Toggle();
}

/*******************************************************************************
 End of File
*/

