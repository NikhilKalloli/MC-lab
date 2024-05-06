PRESERVE8 ;
; 8 byte stack alignment
							THUMB		;
						AREA	|.text|, CODE, READONLY					
					EXPORT __main
; Start of CODE area

__main
	LDR r0, =0xFFFFFFFF ; Source Address
    LDR r1, =0x3333FFFF ; Destination Address
    LDR r2, =0x00000001 ; number of bytes to copy
    LDR r3, =0x33330000 ; number of bytes to copy
    ADDS r0, r0, r2
    ADCS r1, r1, r3

STOP B STOP
    END