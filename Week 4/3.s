;Write an ALP using ARM7DMI to perform 3x3 matrix

.data
	MAT_A: .word 1,2,3,4,5,6,7,8,9
	MAT_B: .word 9,8,7,6,5,4,3,2,1
	result: .word 0,0,0,0,0,0,0,0,0
.text
	LDR R0, =MAT_A
	LDR R1, =MAT_B
	LDR R2, =result
	MOV R3, #9
loop:
	LDR R4, [R0], #4
	LDR R5, [R1], #4
	ADD R6, R4, R5
	STR R6, [R2], #4
	SUBS R3, R3, #1
	BNE loop

	B end
end:
	SWI 0x11
	