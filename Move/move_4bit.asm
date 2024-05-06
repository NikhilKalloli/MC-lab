PRESERVE8 ;
; 8 byte stack alignment
							THUMB		;
						AREA	|.text|, CODE, READONLY					
					EXPORT __main
; Start of CODE area


__main
		LDR r0, =0x20000000 ; Source Address
		LDR r1, =0x20000040 ; Destination Address
		LDR r2, =20 ; number of bytes to copy
copy_loop 
		LDR r3, [r0] ; 0x20000000 
		ADDS r0 ,r0, #4 ; 0x20000040
		STR r3, [r1] ; write a byte datawritten to 0x20000041
		ADDS r1, r1, #4 ; poimts to 0x20000042
		SUBS r2, r2, #4 ; decrement loop counter
		BNE copy_loop ; loop untill all data copied
stop B stop
				END