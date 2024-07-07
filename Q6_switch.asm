	PRESERVE8
	THUMB
	AREA |.text|, CODE, READONLY
	EXPORT __main
	
__main
	ldr r0,= 0
	cmp r0, #3
	bhi default_case
	movs r1, #4
	muls r0, r1, r0
		ldr r2, = BranchTable
		ldr r1, [r2, r0]
		bx r1
	ALIGN 4
	
BranchTable
	DCD Dest0
	DCD Dest1
	DCD Dest2
	DCD Dest3
	
default_case
stop b stop
Dest0 ldr r0, =10
stop1 b stop1
Dest1 ldr r0, =20
stop2 b stop2
Dest2 ldr r0, =30
stop3 b stop3
Dest3 ldr r0, =40
stop4 b stop4

	END