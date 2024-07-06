    PRESERVE8
    THUMB
    AREA |.text|, CODE, READONLY
    EXPORT __main
    EXTERN func
__main
		MOVS r0, #10
		BL func
stop B stop
END


;func.asm
;make another file called func.asm

    PRESERVE8
    THUMB
    AREA |.text|, CODE, READONLY
    EXPORT func
	
func
		PUSH {r0}
		LDR r1, [r13]
		MOVS r3, #2
		MULS r1, r3, r1
		ADDS r1, r1, #9
		STR r1, [r13]
		POP {r2}
		BX LR
END