.data
NUM:    .word 0x00007888
RESULT: .word 0          

.text
LDR R1, =NUM      
LDR R0, [R1]      
MOV R2, #0        
MOV R3, #0xF  ;for extracting the last BCD digit

LOOP:
    AND R4, R0, R3    ;extract LSB
    ADD R2, R2, R4    
    MOV R0, R0,LSR #4    
    CMP R0, #0        
    BNE LOOP   
       
LDR R1, =RESULT   
STR R2, [R1]      
.end