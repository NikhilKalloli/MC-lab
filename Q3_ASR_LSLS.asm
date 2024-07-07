	PRESERVE8
	THUMB
	AREA |.text| , CODE, READONLY
	EXPORT __main
	
__main
	ldr r0,= 0x12345678
	asrs r1, r0, #8
	lsls r2, r0, #8
stop b stop
	END