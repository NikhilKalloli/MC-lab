#include <stdio.h>
#include "NUC1xx.h"
#include "DrvSYS.h"
#include "DrvGPIO.h"
#include "scankey.h"
#include "NUC1xx-LB_002\LCD_Driver.h"

int main(void)
{
  int8_t num;
  char TEXT[16] = "Keypad: ";

  Initial_panel();
  clr_all_panel();
  OpenKeyPad();       

  while (1)
  {
    num = Scankey();               
    sprintf(TEXT + 8, "%d", num); 
    print_lcd(0, TEXT);             
  }
}