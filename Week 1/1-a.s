.text
	MOV R0, #0xFFFFFFFF
	MOV R1, #0xFFFFFFFF
	MOV R2, #0xFFFFFFFF
	MOV R3, #0xFFFFFFFF
	MOV R4, #0xFFFFFFFF
	MOV R5, #0xFFFFFFFF
	MOV R6, #0xFFFFFFFF
	MOV R7, #0xFFFFFFFF

	MOV R8, #0
	MOV R9, #0

	ADD R8, R8, R0
	ADC R9, R9, R1

	ADD R8, R8, R2             
    	ADC R9, R9, R3             
    
    	ADD R8, R8, R4             
	ADC R9, R9, R5            
	
    
    	ADD R8, R8, R6             
    	ADC R9, R9, R7             
    
	MOV R3, R8                 
.end