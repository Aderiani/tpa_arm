; Standalone Example Program 6 – Single Thread with subroutine
; Using a subroutine, increment the X axis by 1000 whenever 
; the DI1 rising edge is detected. 
PRG 0					;Program start line, Program 0
	HSPD=20000			;Set high speed to 20,000 pulses/sec
	LSPD=1000			;Set low speed to 1000 pulses/sec
	ACC=300				;Set acceleration to 300 msec
	ABS				;Set move mode to absolute mode
	EO=1				;Enable the X-axis
	V1=0				;Set variable 1 to 0
	WHILE 1=1			;Forever loop
		IF DI1=1			;If digital input 1 is on, execute the following commands
			GOSUB 1		;Execute subroutine 1
		ENDIF			;End of the IF loop
	ENDWHILE			;Go back to WHILE statement
END					;End of program 0
SUB 1					;Subroutine start line, subroutine 1
	XV1				;Move X-axis to V1 target position
	WAITX				;Wait for X-axis move to complete
	V1=V1+1000			;Increment V1 by 1,000
	WHILE DI1=1			;Wait until the DI1 is turned off (prevent multiple increments)
	ENDWHILE			;Go back to WHILE statement
ENDSUB					;End of subroutine 1

