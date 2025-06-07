;Write an ALP using ARM7TDMI, for the given matrix arranged in row major order, find the index of an element if coordinates of a matrix is given and also find the address of the indexed element. (Using MLA instruction)
.data
	matrix: .word 1,2,3,4
	rows: .word 2
	cols: .word 2
	row_index: .word 1
	col_index: .word 0
	index_out: .word 0
	address_out: .word 0
.text
	LDR R0, =rows
	LDR R1, [R0]
	LDR R0, =cols
	LDR R2, [R0]

	LDR R0, =row_index
	LDR R3, [R0]
	LDR R0, =col_index
	LDR R4, [R0]

	MLA R7, R3, R2, R4

	LDR R0, =matrix
	MOV R6, R7
	ADD R6, R6, R6
	ADD R6, R6, R6
	
	ADD R6, R6, R0

	LDR R0, =index_out
	STR R7, [R0]
	LDR R0, =address_out
	STR R6, [R0]

	B .