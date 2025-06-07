;Write an ALP using ARM7TDMI to add n numbers bytewise

.data
NUMBERS: .byte 10, 20, 30, 40, 50
COUNT: .word 5
SUM: .word 0

.text
	LDR R0, =NUMBERS
	LDR R1, =COUNT
	LDRB R2, [R1]
	MOV R3, #0
loop:
	LDRB R4, [R0], #1
	ADD R3, R3, R4
	SUBS R2, R2, #1
	BNE loop

	LDR R5, =SUM
	STR R3, [R5]

	B end
end:
	SWI 0x11