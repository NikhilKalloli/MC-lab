	PRESERVE8
	THUMB
	AREA |.text|, CODE, READONLY
	EXPORT __main
	
__main
	movs r0,#0
	movs r1, #10
	
loop
	adds r0, r0,r1
	subs r1,#1
	cmp r1, #0
	bne loop
stop b stop
	END