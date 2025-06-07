.text
	MOV R0, #16 ;Move 16 to register R0
	MOV R1, R0, LSL #4 ;R1 stores R0 << 4
	MOV R2, R0, LSL #3 ;R2 stores R0 << 3
	ADD R3, R1, R2 ;R3 = R1 + R2
	ADD R3, R3, R0 
.end