; Standalone Example Program 3 – Single Thread
; Move the X axis back and forth indefinitely 
; between position 1000 and 0.
PRG 1				;Program start line, program 1
	HSPD=20000		;Set the high speed to 20,000 pulses/sec
	LSPD=1000		;Set the low speed to 1000 pulses/sec
	ACC=300			;Set the acceleration to 300 msec
	EO=1			;Enable the motor power
	WHILE 1=1		;Forever loop
		X0		;Move to zero
		WAITX		;Wait for X-axis move to complete
		X1000		;Move to 1000
		WAITX		;Wait for X-axis move to complete
	ENDWHILE		;Go back to WHILE statement
END				;End of program 1
