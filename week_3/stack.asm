; Indicate 8 byte stack alignment
			PRESERVE8
; Indicate THUMB code is used
			THUMB
; CODE area
			AREA	|.TEXT|, 	CODE, READONLY
; Entry point of the program
			EXPORT __main

__main 
			LDR r3,=0x20000100
			LDR r0,=0x20000050
			LDMIA r3!, {r1,r2}
			MOV SP, r0
			PUSH {r1,r2}
			POP {r4,r5}
stop		B stop
			END