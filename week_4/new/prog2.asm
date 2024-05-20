	PRESERVE8 ; Indicate the code here preserve  
	; 8 byte stack alignment         
                     THUMB     ; Indicate THUMB code is used       
                 AREA    |.text|, CODE, READONLY		   
              EXPORT func		
              EXTERN func2

func
    push{LR}
    MOVS r1, #08
    BL func2
    pop {PC}
    END