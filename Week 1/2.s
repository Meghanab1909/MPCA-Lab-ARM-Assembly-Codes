.text
	;R0 and R1 can be changed accordingly
	MOV R0, #2 
	MOV R1, #2
	CMP R0, R1
	BEQ SUBTRACT
	ADD R2, R0, R1
	B END 
SUBTRACT:
	SUB R2, R0, R1       
END:
        SWI 0x11             
