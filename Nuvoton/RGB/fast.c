#include <stdio.h>
#include "NUC1xx.h"
#include "Driver\DrvGPIO.h"
#include "Driver\DrvUART.h"
#include "Driver\DrvSYS.h"

void Init_LED()
{
	DrvGPIO_Open(E_GPA, 12, E_IO_OUTPUT);
	DrvGPIO_Open(E_GPA, 13, E_IO_OUTPUT); 
	DrvGPIO_Open(E_GPA, 14, E_IO_OUTPUT); 

	DrvGPIO_SetBit(E_GPA, 12); 
	DrvGPIO_SetBit(E_GPA, 13); 
	DrvGPIO_SetBit(E_GPA, 14); 
}    

int main (void)
{
	UNLOCKREG();			   
    DrvSYS_Open(48000000);    
	LOCKREG();				 

	Init_LED();
						   
	while (1)
	{		 
	
    DrvGPIO_ClrBit(E_GPA,12); 
    DrvGPIO_SetBit(E_GPA,13); 
    DrvGPIO_SetBit(E_GPA,14); 
	DrvSYS_Delay(1000000); 		   

    DrvGPIO_SetBit(E_GPA,12); 
    DrvGPIO_ClrBit(E_GPA,13); 
    DrvGPIO_SetBit(E_GPA,14); 
	DrvSYS_Delay(1000000);			  

    DrvGPIO_SetBit(E_GPA,12); 
    DrvGPIO_SetBit(E_GPA,13); 
    DrvGPIO_ClrBit(E_GPA,14); 
	DrvSYS_Delay(1000000);			  
	
    DrvGPIO_SetBit(E_GPA,12); 
    DrvGPIO_SetBit(E_GPA,13);
    DrvGPIO_SetBit(E_GPA,14); 
	DrvSYS_Delay(1000000);

	}
}



