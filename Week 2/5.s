;Write an ALP using ARM7TDMI to find whether the given number is even parity

.text
	MOV R0, #7
	MOV R1, #0

PARITY_LOOP:
	AND R2, R0, #1
	ADD R1, R1, R2
	MOV R0, R0, LSR #1
	CMP R0, #0
	BNE PARITY_LOOP

	AND R1, R1, #1
	CMP R1, #0
	BEQ EVEN_PARITY
	B ODD_PARITY

EVEN_PARITY:
	B .

ODD_PARITY:
	B .
