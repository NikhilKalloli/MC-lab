; Indicate 8 byte stack alignment
			PRESERVE8
; Indicate THUMB code is used
			THUMB
; CODE area
			AREA	|.TEXT|, 	CODE, READONLY
; Entry point of the program
			EXPORT __main

__main	 	MOVS R6, #05  ; factorial of a number
				MOVS R4, R6
						SUBS R4, R4, #1
						
LOOP	
			MOVS R7,R4
			MULS R7,R6,R7
			MOVS R6,R7
			SUBS R4,R4,#1
			BNE 		LOOP
stop B stop 
		END