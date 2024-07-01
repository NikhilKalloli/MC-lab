	PRESERVE8 ; Indicate the code here preserve  
	; 8 byte stack alignment         
                     THUMB     ; Indicate THUMB code is used       
                 AREA    |.text|, CODE, READONLY		   
              EXPORT __main			 
	; Start of CODE area 
__main
	LDR r0,=0xFFC0FFFF
	LSLS r0, #8
	LSRS r0, #24
stop B stop
     END

