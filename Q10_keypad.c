#include <stdio.h>
#include "NUC1xx.h"
#include "DrvSYS.h"
#include "DrvGPIO.h"
#include "scankey.h"
#include "NUC1xx-LB_002\LCD_Driver.h"

int main(void)
{
  int8_t number;
  char TEXT[16] = "Keypad: ";

  Initial_panel();
  clr_all_panel();
  OpenKeyPad();       // initialize 3x3 keypad

  while (1)
  {
    number = Scankey();               
    sprintf(TEXT + 8, "%d", number); 
    print_lcd(0, TEXT);             
  }
}