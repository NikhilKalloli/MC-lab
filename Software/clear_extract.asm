PRESERVE8 ; Indicate the code here preserve  
; 8 byte stack alignment         
                     THUMB     ; Indicate THUMB code is used       
                 AREA    |.text|, CODE, READONLY
			   
              EXPORT __main			 
; Start of CODE area


__main
   ;extracting
	LDR r0,=0xFFC0FFFF
	LSLS r0,r0,#(32-16-8)//(32-W-P)
	LSRS r0,r0,#(32-8)
	;clearing
	LDR r0,=0xFFC0FFFF
	MOVS r1,#16
	MOVS R2,#08;(32-16-08)//( 32-W-P)
	MOVS r3,#08
	RORS r0,r0,r1
	LSRS r0,r0,r2
	RORS r0,r0,r3
stop B stop
  END