;Write an ALP using ARM7TDMI to perform Convolution using MUL instruction (Addition of multiplication of respective numbers of loc A and loc B)
.data 
	loca: .word 1,2,3,4 ;Array A
	locb: .word 5,6,7,8 ;Array B
	N: .word 4 ;Length of both arrays
	result: .word 0 
.text
	LDR R0, =loca
	LDR R1, =locb
	LDR R2, =N
	LDR R2, [R2] ;count register
	MOV R3, #0 ;sum register

loop:
	LDR R5, [R0], #4
	LDR R6, [R1], #4

	MUL R7, R5, R6
	ADD R3, R3, R7

	SUB R2, R2, #1
	CMP R2, #0
	BNE loop
done:
	LDR R0, =result
	STR R3, [R0]

	B end

end:
	SWI 0x11

	