;Write an ALP using ARM7DI to find the remainder of a number

.text
	MOV R0, #3
	MOV R1, #2

divide_loop:
	SUB R0, R0, R1
	CMP R0, R1
	BGE divide_loop

end:
	SWI 0x11