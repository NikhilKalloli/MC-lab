PRESERVE8 ;
; 8 byte stack alignment
							THUMB		;
						AREA	|.text|, CODE, READONLY					
					EXPORT __main
; Start of CODE area


__main
		LDR r0, =0x20000000 ; Source Address
		LDR r1, =0x20000040 ; Destination Address
		LDR r2, =10 ; number of bytes to copy
copy_loop 
		LDRB r3, [r0]   
		ADDS r0 ,r0, #1 
		STRB r3, [r1] 
		ADDS r1, r1, #1
		SUBS r2, r2, #1 
		BNE copy_loop 
stop B stop
				END