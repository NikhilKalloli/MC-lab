#include <stdio.h>																											 
#include "NUC1xx.h"
#include "Seven_Segment.h"
#include "DrvGPIO.h"
#include "DrvSYS.h"

void seg_display(int16_t val){
	int8_t digit;
		digit = val / 1000;
		close_seven_segment();
		show_seven_segment(3,digit);
		DrvSYS_Delay(1000);
	
	val = val - digit*1000;	
	digit = val / 100;
		close_seven_segment();
		show_seven_segment(2,digit);
		DrvSYS_Delay(1000);
	
		val = val - digit*100	;
	digit = val / 10;
		close_seven_segment();
		show_seven_segment(1,digit);
		DrvSYS_Delay(1000);
	
		val = val - digit*10;	
	digit = val ;
		close_seven_segment();
		show_seven_segment(0,digit);
		DrvSYS_Delay(1000);
	
}

int32_t main(void){
	int16_t val;
	val = 0000;
	
	UNLOCKREG();
	DrvSYS_Open(1800);
	LOCKREG();
	
	while(1){
		DrvSYS_Delay(1800);
		val++;
		seg_display(val);
		if(val == 9999){
			break;
		}
	}
}