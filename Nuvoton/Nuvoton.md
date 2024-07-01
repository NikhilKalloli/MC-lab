### STEP 1: 
Open Keil Software -> Go to project Tab -> New μVision Project -> Go to nu folder on Desktop -> Nuvoton Platform_Keil -> Sample -> EduSample -> Create a new folder -> create a file(without extension)

### STEP 2:  
A dialogue box will appear where we need to select Device for Target.  
Under Database -> Select Nuvoton -> Select it last Version (NUC140VE3AN) -> click OK

### STEP 3:  
click on Target1 -> Source Group1 (right click) -> Add files to group 1 -> Go to nu140 -> CMIS -> CMO -> CoreSupport -> core_cm0.c
Do the same thing again but this time -> DeviceSupport -> Nuvoton -> NUC1xx -> system_NUC1xx.c

### STEP 4:  
Target1(right click) -> options for target 1 -> C/C++ -> Include Paths (click on 3 dots) -> new Path (dotted rectangle) ->  Go to nu140 -> CMIS -> CMO -> CoreSupport  
  
Target1(right click) -> options for target 1 -> C/C++ -> Include Paths (click on 3 dots) -> new Path (dotted rectangle) ->  Go to nu140 -> CMIS -> CMO -> DeviceSupport  
  
Target1(right click) -> options for target 1 -> C/C++ -> Include Paths (click on 3 dots) -> new Path (dotted rectangle) ->  Go to nu140 ->  NuvtonPlatform_keil -> Include  

Target1(right click) -> options for target 1 -> C/C++ -> Include Paths (click on 3 dots) -> new Path (dotted rectangle) ->  Go to nu140 ->  NuvtonPlatform_keil -> Include -> Driver  

Target1(right click) -> options for target 1 -> C/C++ -> Include Paths (click on 3 dots) -> new Path (dotted rectangle) ->  Go to nu140 ->  NuvtonPlatform_keil -> Include -> NUC1xx-LB_002

Target1(right click) -> options for target 1 -> Debug -> Select NULink Debugger -> click Use 


Target1(right click) -> options for target 1 -> Utilities -> Select NULink Debugger

  
### STEP 5:  
click on new file -> type your code -> save in same path as in STEP 1  
  
More specifically (to save):  Go to nu folder on Desktop -> Nuvoton Platform -> Sample -> EduSample -> your previously created folder -> save with exetension (.c)  

### STEP 6:  
Source Group 1(right click) ->  Add files to group 1 -> Choose yourfile.c -> Add  

## STEP 7:
Based on your program add appropriate header files to Source group 

click on Target1 -> Source Group1 (right click) -> Add files to group 1 -> Go to nu140 ->  Nuvoton Platform_Keil -> src -> Driver -> Add header files as per your program


Hack, Add these files to any program you get for Nuvoton board.
Driver -> DrvSYS.c , DrvGPIO.c , DrvUART.c
NUC -> LCD_Driver.c , Ascii_Table.c, ScanKey.c , Seven_Segment.c

## STEP 8:
Click Save all _> Connect your board to CPU -> Build -> Load -> CLick reset button on Nuvoton Board.






