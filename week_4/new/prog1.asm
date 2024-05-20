	PRESERVE8 ; Indicate the code here preserve  
	; 8 byte stack alignment         
                     THUMB     ; Indicate THUMB code is used       
                 AREA    |.text|, CODE, READONLY		   
              EXPORT __main		
              EXTERN func	 
	; Start of CODE area 
__main
    LDR r0, = 0x10;
    BL func
stop B stop
    END