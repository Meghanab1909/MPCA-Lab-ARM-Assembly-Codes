;Write an ALP using ARM7TDMI to find the largest number from a given set of numbers
; A: .word 10, 50, 41, 55, 30, 20, 11, 5, 100, 77

.DATA
	A: .word 10, 50, 41, 55, 30, 20, 11, 5, 100, 77

.TEXT
	LDR R0, =A
	LDR R1, [R0]
	MOV R2, #10

LOOP:
	LDR R3, [R0], #4
	CMP R3, R1
	MOVGT R1, R3
	SUB R2, R2, #1
	CMP R2, #0
	BNE LOOP

.END
	B end