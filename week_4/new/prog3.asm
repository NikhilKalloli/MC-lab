	PRESERVE8 ; Indicate the code here preserve  
	; 8 byte stack alignment         
                     THUMB     ; Indicate THUMB code is used       
                 AREA    |.text|, CODE, READONLY		   
              EXPORT func		
func2   
    MOVS r2, #08
    BX LR
    END