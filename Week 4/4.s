.data
	MATRIX: .word 0, 1, 2, 3
.text
	LDR R5, =MATRIX
	
	MOV R1, #1
	MOV R2, #1
	MOV R3, #2

	MLA R0, R2, R3, R1

	MOV R6, R0, LSL #2
	ADD R4, R5, R6
.end
