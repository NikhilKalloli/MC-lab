    PRESERVE8
    THUMB
    AREA |.text|, CODE, READONLY
    EXPORT __main
	
__main 
		LDR r0,=0x12345678
		ASRS r1,r0,#8
		LSLS r2,r0,#4
stop B stop
END