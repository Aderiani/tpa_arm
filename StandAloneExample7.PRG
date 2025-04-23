; Standalone Example Program 7 – Single Thread with error handling
; If digital input 1 is on, move to position 2000. 
; If digital input 2 is on, move to position 4000.  
; If digital input 3 is on, move to 6000. 
; If digital input 4 is on, home the motor in negative direction, mode 0. 
; Use digital output 1 to indicate that the motor is moving or not moving. 
; Also, create an error handling subroutine utilizing SUB 31 that clears
; the error and then returns the motor to position zero.
PRG 2					;Start program 2
	HSPD=15000			;Set high speed to 15,000 pulses/sec
	LSPD=500			;Set low speed to 500 pulses/sec
	ACC=300				;Set acceleration to 300 msec
	EO=1				;Enable the X-axis
	WHILE 1=1			;Forever loop
		IF DI1=1			;If digital input 1 is on
			X2000		;Move X-axis to 1000
		ELSEIF DI2=1		;If digital input 2 is on
			X4000		;Move X-axis to 4000
		ELSEIF DI3=1		;If digital input 3 is on
			X6000		;Move X-axis to 6000
		ELSEIF DI4=1		;If digital input 4 is on
			HOMEX-0	;Home X-axis with mode 0 in the negative direction
		ENDIF			;End of the IF loop
		V1=MSTX		;Store the X-axis status to variable 1
		V2=V1&7			;Get first 3 bits
		IF V2!=0			;If one of first 3 bits is high (X-axis moving)
			DO1=1		;Turn on digital output 1
		ELSE			;Else if first 3 bits are low (X-axis idle)
			DO1=0		;Turn off digital output 1
		ENDIF			;End of the IF loop
	ENDWHILE			;Go back to WHILE statement
END					;End of program 2
SUB 31					;Subroutine start line, subroutine 31 (error handling subroutine)
 	ECLEARX			;Clear the current error in X-axis
 	X0				;Return X-axis to position 0
	DO2=1				;Turn on digital output 2
ENDSUB					;End of subroutine 31

