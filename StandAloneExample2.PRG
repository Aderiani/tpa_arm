; Standalone Example Program 2 – Single Thread with buffer
; Create a contouring profile for the X-axis using buffer 
; move function.  
PRG 0				;Program start line, program 0
	BUFON			;Enable buffer move
; Load Buffer
	HSPD=100		;Set high speed to 100 pulses/sec
	X1000Y100Z100		;I:1000:100:100:100
	HSPD=200		;Set high speed to 200 pulses/sec
	X2000Y100Z100		;I:2000:100:100:200
	HSPD=300		;Set high speed to 300 pulses/sec
	X3000Y100Z100		;I:3000:100:100:300
	HSPD=400		;Set high speed to 400 pulses/sec
	X4000Y100Z100		;I:4000:100:100:400
	HSPD=500		;Set high speed to 500 pulses/sec
	X5000Y100Z100		;I:5000:100:100:500
	HSPD=400		;Set high speed to 400 pulses/sec
	X3000Y100Z100		;I:3000:100:100:400
	HSPD=300		;Set high speed to 300 pulses/sec
	X0Y100Z100		;I:0:100:100:300
; Start buffered move
	ISTART			;BSTART
	DELAY=100		;Delay 0.1 seconds
	WAITX			;Wait until axis X motion has stopped
	BUFOFF			;Disable buffer move
END				;End of program 0
