;Display "PESU" in order on 8 seg display.

.text
	MOV R0,#0
AGAIN: 	SWI 0X202
	CMP R0,#1
	BEQ LOOP
	B AGAIN

LOOP:	MOV R5,#4
	LDR R1,=P

BACK:	LDRB R0,[R1]
	SWI 0X200
	BL DELAY
	ADD R1,R1,#1
	SUB R5,R5,#1
	CMP R5,#0
	BNE BACK
	B AGAIN

DELAY:	LDR R4, =0x249F0

LOOP3:	SUB R4,R4,#1
	CMP R4,#0
	BGE LOOP3
	MOV PC,LR

.data
	P: .byte 0b11000111
	E: .byte 0b10001111
	S: .byte 0b10101011
	U: .byte 0b01101101