   	PRESERVE8
	THUMB
	AREA |.text|, CODE, READONLY
	EXPORT __main
	
__main
	LDR R0, =0
	CMP R0, #3
	BHI default_case
	MOVS R2, #4 
	MULS R0, R2, R0
		LDR R1, =BranchTable
        LDR R2,[R1,R0]
        BX R2
	ALIGN 4

BranchTable
	DCD Dest0 
	DCD Dest1 
	DCD Dest2 
	DCD Dest3 

default_case 
stop B stop
Dest0  ldr r0, =10 
stop1 B stop1
Dest1 ldr r0, =20  
stop2 B stop2
Dest2 ldr r0, =30  
stop3 B stop3
Dest3 ldr r0, =40  
stop4 B stop4

	 END