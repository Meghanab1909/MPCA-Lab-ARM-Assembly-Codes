;Write an ALP using ARM7TDMI to reverse the elements stored in location A with location B  
;Before: A:.word 1,2,3,4,5,6,7,8,9,10
;After : A:.word 10,9,8,7,6,5,4,3,2,1

.data
	A: .word 1,2,3,4,5,6,7,8,9,10
	B: .word 0,0,0,0,0,0,0,0,0,0

.text
	LDR R0, =A
	LDR R1, =B
	MOV R2, #10 ;number of elements in the array
	ADD R6, R0, #36

reverse:
	LDR R4, [R6], #-4
	STR R4, [R1], #4

	SUB R2, R2, #1
	CMP R2, #0
	BNE reverse

	LDR R0, =A
	LDR R1, =B
	MOV R2, #10

restore:
	LDR R4, [R1], #4
	STR R4, [R0], #4

	SUB R2, R2, #1
	CMP R2, #0
	BNE restore
end:
	SWI 0x11
	
	