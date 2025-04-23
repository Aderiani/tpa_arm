; Standalone Example Program 8 – Multi-thread
; Program 0 will continuously move the motor 
; between positions 0 and 1000. 
; Simultaneously, program 1 will control the 
; status of program 0 using digital inputs.
PRG 0				;Start program 0
	HSPD=20000		;Set speed to 20,000 pulses/sec
	LSPD=500		;Set speed to 500 pulses/sec
	ACC=500			;Set acceleration to 500 msec
	WHILE 1=1		;Forever loop
		X0		;Move X-axis to position 0
		WAITX		;Wait for X-axis move to complete
		X1000		;Move X-axis to position 1,000
		WAITX		;Wait for X-axis move to complete
	ENDWHILE		;Go back to WHILE statement
END				;End program 0
PRG 1				;Start program 1
WHILE 1=1			;Forever loop
	IF DI1=1			;If digital input 1 is triggered
		ABORTX		;Stop movement in X-axis
		SR0=0		;Stop program 0
	ELSE			;If digital input 1 is not triggered
		SR0=1		;Run program 0
	ENDIF			;End of the IF loop
ENDWHILE			;Go back to WHILE statement
END				;End program 1
