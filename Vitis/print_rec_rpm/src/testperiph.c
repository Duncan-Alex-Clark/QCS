#include <stdio.h>
#include "xparameters.h"
#include "xil_cache.h"
#include "xintc.h"
#include "intc_header.h"
#include "xil_io.h"
#include "sleep.h"
//#include "xuartps.h"

#define QCS_BASE_ADDR 0x44A00000

int main () 
{
//   static XIntc intc;
   Xil_ICacheEnable();
   Xil_DCacheEnable();
//   Xil_DCacheDisable();
//   Xil_ICacheDisable();

   // Define registers
   volatile u32 rec;
   volatile u32 rpm;


   print("---Entering main---\n\r");

   // Infinite loop to read and print the first two registers
   int i = 5;
	 while(i) {
		 // Clear terminal (ANSI escape sequence)
//		 print("\033[2J\033[H");  // Clears the screen and moves the cursor to top-left

//		 Xil_DCacheInvalidateRange(QCS_BASE_ADDR, sizeof(u32));

		 // Read the values of the first two registers
		 rec = Xil_In32(QCS_BASE_ADDR);
		 usleep(2);
		 rpm = Xil_In32(QCS_BASE_ADDR + 4);    // Read second register (assuming 32-bit width)

		 // Print the register values
		 printf("Register 1: %X\n\r", rec);
		 printf("Register 2: %X\n\n\n", rpm);

		 // Wait for 1 second
		 print("Entering sleep...\n\r");
		 sleep(2);  // sleep is provided by xil_io.h (1 second delay)
		 print("Exiting sleep...\n\r");
		 i--;
	 }




   print("---Exiting main---\n\r");
//   Xil_DCacheDisable();
//   Xil_ICacheDisable();
   return 0;
}