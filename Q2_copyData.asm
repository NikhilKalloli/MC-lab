   	PRESERVE8
	THUMB
	AREA |.text|, CODE, READONLY
	EXPORT __main
	
__main
	ldr r0,=0x20000000
	ldr r1,=0x20000120
	ldr r2,=128
loop   
	ldmia r0!,{r4-r7}
	stmia r1!,{r4-r7}
	ldmia r0!,{r4-r7}
	stmia r1!,{r4-r7}
	ldmia r0!,{r4-r7}
	stmia r1!,{r4-r7}
	ldmia r0!,{r4-r7}
	stmia r1!,{r4-r7}
	subs r2,r2,#64
	bne loop
stop b stop
       END