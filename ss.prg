PRG 1
GOSUB 7        ; Initialize/Home the arm
WHILE 1 = 1    ; Infinite loop
 GOSUB 10      ; Go to Ao
 GOSUB 11      
 GOSUB 12      ; Go to Ai
 GOSUB 13      ; Grab the plate
 GOSUB 13      ; Go to Ao
 GOSUB 13      ; Go to Bo
 GOSUB 13      ; Go to Bi
 GOSUB 13      ; Release the plate
 GOSUB 14      ; Go to Bi1 
 GOSUB 14      ; Go back to Bi 
 GOSUB 14      ; Grab the plate
 GOSUB 14      ; Go to Bo 
 GOSUB 14      ; Go to Ao
 GOSUB 14      ; Go to Ai
 GOSUB 14      ; Release the plate
 GOSUB 14       ; Go to Ai1
 DELAY=1000    ; Short pause between cycles
ENDWHILE 
END

;*************************
SUB 1          ; Turn ON electromagnet
DO4=1
DELAY=500
ENDSUB 

;*************************f
SUB 2          ; Turn OFF electromagnet
DO4=0
DELAY=500
ENDSUB 

;*************************
SUB 7          ; Initialization routine
HSPD=10000
LSPD=400
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
SUB 10         ; Move Y to Position i 
Y131000          
WAITY
ENDSUB 

;*************************
SUB 11        ; Move Y to Position i1 
Y120000          
WAITY
ENDSUB 

;*************************
SUB 12        ; Move Y to Position o 
Y4900          
WAITY
ENDSUB 

;*************************
SUB 13        ; Move Z to Position B 
Z13500          
WAITZ
ENDSUB 
;*************************
SUB 14        ; Move Z to Position A 
Z3300          
WAITY
ENDSUB 