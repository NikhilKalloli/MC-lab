PRESERVE8 ;
; 8 byte stack alignment
							THUMB		;
						AREA	|.text|, CODE, READONLY					
					EXPORT __main
; Start of CODE area


__main
		LDR r0, =0x20000000 ; Source Address
		LDR r1, =0x20000120 ; Destination Address
		LDR r2, =128 ; number of bytes to copy
copy_loop ;
		LDMIA r0!, {r4-r7};  
		STMIA r1!, {r4-r7};
		LDMIA r0!, {r4-r7};
		STMIA r1!, {r4-r7};
		LDMIA r0!, {r4-r7};
		STMIA r1!, {r4-r7};
		LDMIA r0!, {r4-r7};
		STMIA r1!, {r4-r7};
		SUBS r2, r2, #64 ;
		BNE copy_loop ; 
stop B stop
				END