;Write an ALP using ARM7TDMI to find swap first and last character of a given string

.data
	string: .asciz "MPCA"

.text
	LDR R0, =string

	LDRB R1, [R0]
	MOV R2, R0

loop:
	LDRB R3, [R2], #1
	CMP R3, #0
	BNE loop

	SUB R2, R2, #2

	LDRB R3, [R2]

	STRB R1, [R2]
	STRB R3, [R0]

	LDR R0, =string
	SWI 0x02

exit:
	SWI 0x11
	
