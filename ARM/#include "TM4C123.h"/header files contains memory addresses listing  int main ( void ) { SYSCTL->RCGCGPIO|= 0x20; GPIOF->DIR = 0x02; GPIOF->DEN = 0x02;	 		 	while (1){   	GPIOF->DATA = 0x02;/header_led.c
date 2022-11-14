#include "TM4C123.h" // header files contains memory addresses listing 
int main ( void )
{
SYSCTL->RCGCGPIO|= 0x20;
GPIOF->DIR = 0x02;
GPIOF->DEN = 0x02;	
		
	while (1){  
	GPIOF->DATA = 0x02; // turn on red LED
				
    }
}
