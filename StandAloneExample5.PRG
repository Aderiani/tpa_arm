; Standalone Example Program 5 – Single Thread
; Move the X axis back and forth between 
; position 1000 and 0 only if the digital 
; input 1 is turned on.
PRG 2					;Program start line, program 2
	HSPD=20000			;Set high speed to 20,000 pulses/sec
	LSPD=1000			;Set low speed to 1000 pulses/sec
	ACC=300				;Set acceleration to 300 msec
	EO=1				;Enable the X-axis
	WHILE 1=1			;Forever loop 
		IF DI1=1			;If digital input 1 is on, execute the following commands 
			X0		;Move X-axis to zero
			WAITX		;Wait for X-axis move to complete
			X1000		;Move X-axis to 1,000
			WAITX		;Wait for X-axis move to complete
		ENDIF			;End of the IF loop
	ENDWHILE			;Go back to WHILE Statement
END					;End of program 2
