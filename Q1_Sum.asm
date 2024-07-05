   	PRESERVE8
	THUMB
	AREA |.text|, CODE, READONLY
	EXPORT __main
	
__main
	movs r2,#0
	movs r1,#10
loop   
	subs r1,r1,#1
	adds r2,r1,r2
	cmp r1, #1
	bgt loop
result b result
       END
	
	