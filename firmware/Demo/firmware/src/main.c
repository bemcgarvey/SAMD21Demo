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

void TC3Callback(TC_TIMER_STATUS status, uintptr_t context);

int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    RedLed_Set();
    printf("Hello World\r\n");
    TC3_TimerCallbackRegister(TC3Callback, (uintptr_t) NULL);
    TC3_TimerStart();
    while ( true )
    {
        char rx;
        if (SERCOM1_USART_ReceiverIsReady()) {
            rx = SERCOM1_USART_ReadByte();
            while (!SERCOM1_USART_TransmitterIsReady());
            SERCOM1_USART_Write(&rx, 1);
            if (rx == 'r') {
                RedLed_Toggle();
            }
        }
        if (!Button1_Get()) {
            YellowLed_Set();
        } else {
            YellowLed_Clear();
        }
        if (!Button2_Get()) {
            GreenLed_Set();
        } else {
            GreenLed_Clear();
        }
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


void TC3Callback(TC_TIMER_STATUS status, uintptr_t context) {
    BlueLed_Toggle();
}

/*******************************************************************************
 End of File
*/

