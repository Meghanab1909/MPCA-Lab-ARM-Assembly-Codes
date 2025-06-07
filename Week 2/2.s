;Write an ALP using ARM7TDMI to add only even numbers stored in memory location for a given set of numbers and store the sum in the memory location.
;Array: .WORD 15, 10, 12, 13, 9, 45, 16, 8, 25, 33
;evensum: .WORD

.DATA
	Array: .WORD 15, 10, 12, 13, 9, 45, 16, 8, 25, 33
	evensum: .WORD 0

.TEXT
	LDR R1, =Array
	LDR R2, =evensum
	MOV R3, #0
	MOV R4, #10

LOOP:
	LDR R5, [R1], #4
	AND R6, R5, #1
	CMP R6, #0
	ADDNE R3, R3, #0
	ADDEQ R3, R3, R5
	SUB R4, R4, #1
	CMP R4, #0
	BNE LOOP

	STR R3, [R2]

.END
	B end
	
	

