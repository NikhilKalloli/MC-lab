   	PRESERVE8
	THUMB
	AREA |.text|, CODE, READONLY
	EXPORT __main
	
__main
	;extraction
    ldr r0,=0x12345678
	lsls r0,r0,#(32-16-8)
	lsrs r0,r0,#(32-8)
	
	;clearing
	ldr r4,=0x12345678
	movs r1,#16
	movs r2,#8
	movs r3,#8
	
	rors r4,r4,r1
	lsrs r4,r4,r2
	rors r4,r4,r3
stop b stop
	END
	
	