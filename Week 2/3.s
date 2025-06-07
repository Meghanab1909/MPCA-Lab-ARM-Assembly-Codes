;Write a ALP using ARMTDMI-ISA to store odd and even numbers in seperate memory locations starting from LOCA and LOCB respectively.
;ARRAY: .WORD 10, 50, 41, 55, 30, 20, 11, 5, 100, 77
;LOCA: .WORD 0, 0, 0, 0, 0, 0
;LOCB .WORD 0, 0, 0, 0, 0, 0

.DATA
	ARRAY: .WORD 10, 50, 41, 55, 30, 20, 11, 5, 100, 77
	LOCA: .WORD 0, 0, 0, 0, 0, 0
	LOCB: .WORD 0, 0, 0, 0, 0, 0

.TEXT
	LDR R0, =ARRAY
	LDR R1, =LOCA
	LDR R2, =LOCB
	MOV R3, #10

LOOP:
	LDR R5, [R0], #4
	AND R6, R5, #1 ;0 if even, 1 if odd
	STREQ R5, [R1], #4
	STRNE R5, [R2], #4
	SUB R3, R3, #1
	CMP R3, #0
	BNE LOOP

.END
	B end
		