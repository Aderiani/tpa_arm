; Standalone Example Program 1 – Single Thread
; Set high speed, low speed and acceleration time.  
; Enable the X-axis motor,  move the X-axis to 
; 1000 and back to 0. 
PRG 0			;Program start line, program 0 
	HSPD=20000	;Set high speed to 20,000 pulses/sec 
	LSPD=1000 	;Set low speed to 1,000 pulses/sec 
	ACC=300 	;Set acceleration to 300 msec 
	EO=1 		;Enable the X axis 
	X1000 		;Move X axis to 1,000 
	WAITX 		;Wait for X axis move to complete 
	X0 		;Move X axis to zero 
	WAITX 		;Wait for X axis move to complete 
END 			;End of program 0 
