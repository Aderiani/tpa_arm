;*************************
PRG 1
GOSUB 1        ; Initialize/Home the arm
GOSUB 2        ; Go to outer Y    
GOSUB 3        ; Go to lower Z    
WHILE 1 = 1    ; Infinite loop
 GOSUB 4       ; Go to inner Y
 GOSUB 5       ; Grab the plate
 GOSUB 2       ; Go to outer Y
 GOSUB 6       ; Go to upper Z
 GOSUB 4       ; Go to inner Y
 GOSUB 7       ; Release the plate
 GOSUB 8       ; Go to inner Y1
 GOSUB 4       ; Go back to inner Y
 GOSUB 5       ; Grab the plate
 GOSUB 2       ; Go to outer Y
 GOSUB 3       ; Go to lower Z
 GOSUB 4       ; Go to Ai
 GOSUB 7       ; Release the plate
 GOSUB 8       ; Go to Ai1
 DELAY=1000    ; Short pause between cycles
ENDWHILE 
END

;*************************
SUB 1          ; Initialize/Home the arm
HSPD=13000
LSPD=500
ACC=80
EO=7
HOMEZ-6
WAITZ
HOMEY-6
WAITY
HOMEX-6
WAITX
ENDSUB 

;*************************
SUB 5          ; Grab the plate
DO4=1
DELAY=500
ENDSUB 

;*************************
SUB 7          ; Release the plate
DO4=0
DELAY=500
ENDSUB 

;*************************
SUB 6          ; Go to upper Z
Z18000
WAITZ
ENDSUB 

;*************************
SUB 3          ; Go to lower Z
Z0
WAITZ
ENDSUB 

;*************************
SUB 4          ; Go to inner Y
Y131000
WAITY
ENDSUB 

;*************************
SUB 8          ; Go to inner Y1
Y120000
WAITY
ENDSUB 

;*************************
SUB 2          ; Go to outer Y
Y4900
WAITY
ENDSUB