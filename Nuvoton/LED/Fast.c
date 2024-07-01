#include "NUC1xx.h"
#include "Driver\DrvSYS.h"
#include "Driver\DrvGPIO.h"

void Init_LED() 
{
	DrvGPIO_Open(E_GPC, 15, E_IO_OUTPUT); 
	DrvGPIO_SetBit(E_GPC, 15);           
}

int main (void)
{
	UNLOCKREG();			   
  DrvSYS_Open(48000000);
	                      
	LOCKREG();				    

  Init_LED();        

	while (1)				  
	{
	DrvGPIO_ClrBit(E_GPC, 15);
	DrvSYS_Delay(300000);	   
	DrvGPIO_SetBit(E_GPC, 15);
	DrvSYS_Delay(300000);	   
	}
}