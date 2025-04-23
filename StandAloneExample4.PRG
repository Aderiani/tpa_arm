; Standalone Example Program 4 – Single Thread
; Move the X axis back and forth 10 times 
; between position 1000 and 0.
PRG 1				;Program start line, program 1
	HSPD=20000		;Set the high speed to 20,000 pulses/sec
	LSPD=1000		;Set the low speed to 1000 pulses/sec
	ACC=300			;Set the acceleration to 300 msec
	EO=1			;Enable the motor power
	V1=0			;Set variable 1 to 0
	WHILE V1<10		;Loop while variable 1 is less than 10
		X0		;Move to zero
		WAITX		;Wait for X-axis move to complete
		X1000		;Move to 1000
		WAITX		;Wait for X-axis move to complete
		V1=V1+1		;Increment variable 1 by 1
	ENDWHILE		;Go back to WHILE statement
END				;End of program 1
