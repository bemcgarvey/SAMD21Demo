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

DRV_HANDLE eeHandle;
char eeBuffer[256];
int count = 0;

void rightButtonCallback(uintptr_t context);

int main(void) {
    /* Initialize all modules */
    SYS_Initialize(NULL);
    EIC_CallbackRegister(EIC_PIN_0, rightButtonCallback, (uintptr_t) NULL);
    EIC_InterruptEnable(EIC_PIN_0);
    printf("\r\n\r\nOpening eeprom driver\r\n");
    eeHandle = DRV_AT25_Open(DRV_AT25_INDEX, DRV_IO_INTENT_READWRITE);
    if (eeHandle == DRV_HANDLE_INVALID) {
        // Unable to open the driver
        RedLed_Set();
        while (1);
    }
    printf("Reading from 0x500\r\n");
    DRV_AT25_Read(eeHandle, eeBuffer, sizeof (eeBuffer), 0x500);
    while(DRV_AT25_TransferStatusGet(eeHandle) == DRV_AT25_TRANSFER_STATUS_BUSY);
    eeBuffer[sizeof (eeBuffer) - 1] = '\0';
    printf("%s\r\n", eeBuffer);
    SYSTICK_TimerStart();
    while (true) {
        ++count;
        printf("\rCount = %d", count);
        SYSTICK_DelayMs(500);
        SYS_Tasks();
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE);
}

void rightButtonCallback(uintptr_t context) {
    YellowLed_Toggle();
    snprintf(eeBuffer, sizeof(eeBuffer), "Saved count = %d", count);
    DRV_AT25_Write(eeHandle, eeBuffer, sizeof(eeBuffer), 0x500);
}
/*******************************************************************************
 End of File
 */

