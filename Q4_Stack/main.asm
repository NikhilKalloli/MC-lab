   	PRESERVE8
	THUMB
	AREA |.text|, CODE, READONLY
	EXPORT __main
	EXTERN func

__main
	LDR r0,=0x12345678
	BL func
stop B stop
	END