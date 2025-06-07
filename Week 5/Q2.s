.data
	A: .asciz "Meghana"

.text
	LDR R0, =A
	MOV R2, #0 ;string length register

loop:
	LDRB R1, [R0], #1

	CMP R1, #0
	BEQ exit

	ADD R2, R2, #1
	
	B loop

exit:
	SWI 0x11

