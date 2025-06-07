;Write an ALP using ARM7TDMI to multiply 2 matrices. 

.data
	A_Matrix: .word 1, 2, 3, 4, 5, 6, 7, 8, 9
	B_Matrix: .word 9, 8, 7, 6, 5, 4, 3, 2, 1
	Result_Matrix: .word 0, 0, 0, 0, 0, 0, 0, 0, 0
	
.text
	LDR R0, =A_Matrix
	LDR R1, =B_Matrix
	LDR R2, =Result_Matrix

	MOV R4, #0
	MOV R11, #3

row_loop:
	CMP R4, #3
	BGE end

	MOV R5, #0

column_loop:
	CMP R5, #3
	BGE next_row

	MOV R6, #0
	MOV R7, #0

multiply_loop:
	CMP R7, #3
	BGE store_result

	MUL R8, R4, R11
	ADD R8, R8, R7
	MOV R8, R8, LSL #2
	LDR R8, [R0, R8]

	MUL R9, R7, R11
	ADD R9, R9, R5
	MOV R9, R9, LSL #2
	LDR R9, [R1, R9]

	MLA R6, R8, R9, R6
	ADD R7, R7, #1

	B multiply_loop

store_result:
	MUL R10, R4, R11
	ADD R10, R10, R5
	MOV R10, R10, LSL #2
	STR R6, [R2, R10]
	
	ADD R5, R5, #1
	B column_loop

next_row:
	ADD R4, R4, #1
	B row_loop

end:
	SWI 0x11