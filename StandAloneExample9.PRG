; Standalone Example Program 9 – Multi-thread with subroutine
; Program 0 starts program 1 and program 2, after which it 
; calls subroutine 1, which homes axis X to the negative limit.
; Then Program 0 continuously moves the X-axis between positions
; 0 and 1000. 
; Simultaneously, program 1 is monitoring the X-axis status.
; Program 1 uses digital output 1 to indicate that the motor 
; is moving or not moving. 
; Program 2 flashes digital output 3, on for 3 seconds, 
; then off for 3 seconds. 
; An error handling subroutine utilizing SUB 31 turns on 
; digital output 2 clears the error and returns the motor 
; to position zero, then waits 1.5 seconds after which it 
; turns digital output 2 off.
PRG 0					;Start of program 0
	SR1=1				;Start program 1 running
	SR2=1				;Start program 2 running
	SCVX=1				;Enable S-Curve for axis X
	ABS				;Set move mode to absolute mode
	HSPD=1000			;Set high speed to 1,000 pulses/sec
	LSPD=100			;Set low speed to 100 pulses/sec
	ACC=200				;Set acceleration to 200 msec
	DEC=200				;Set deceleration to 200 msec
	EO=1				;Enable X-axis
	GOSUB 1				;Go to Subroutine 1
	WHILE 1=1			;Forever loop
			X0		;Move X-axis to position 0
			WAITX		;Wait for X-axis move to complete
			DELAY=500	;Delay 0.5 seconds	
			X1000		;Move X-axis to position 1000
			WAITX		;Wait for X-axis move to complete
			DELAY=500	;Delay 0.5 seconds	
	ENDWHILE			;Go back to WHILE statement
END					;End program 0
PRG 1					;Start of program 1
	WHILE 1=1			;Forever loop
		V1=MSTX		;Store the X-axis status to variable 1 
		V2=V1&7			;Get first 3 bits
		IF V2!=0			;If one of first 3 bits is high (X-axis moving)
			DO1=1		;Turn on digital output 1
		ELSE			;Else if first 3 bits are low (X-axis idle)
			DO1=0		;Turn off digital output 1
		ENDIF			;End of the IF loop
	ENDWHILE			;Go back to WHILE statement
END					;End program
PRG 2					;Start of program 2
	WHILE 1=1			;Forever loop
		DO3=0			;Turn off digital output 3
		DELAY=3000		;Delay 3 seconds
		DO3=1			;Turn oh digital output 3
		DELAY=3000		;Delay 3 seconds
	ENDWHILE			;Go back to WHILE statement
END					;End program
SUB 1					;Subroutine start line, subroutine 1
	HOMEX-6			;Home X-axis with mode 6 in the negative direction
	WAITX				;Wait for X-axis move to complete
ENDSUB					;End of subroutine 1
SUB 31					;Subroutine start line, subroutine 31 (error handling subroutine)
 	DO2=1				;Turn on digital output 2
	ECLEARX			;Clear the current error in X-axis
 	X0				;Return X-axis to position 0
	DELAY=1500			;Delay 1.5 seconds
	DO2=0				;Turn off digital output 2
ENDSUB					;End of subroutine 31
