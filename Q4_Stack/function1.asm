    PRESERVE8
	THUMB
	AREA |.text|, CODE, READONLY
	EXPORT func
	EXTERN func2
	
func
	push{LR}
	MOVS R1,#08
	BL func2
	pop{PC}
    END