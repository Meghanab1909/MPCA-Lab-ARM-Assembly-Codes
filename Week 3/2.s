.data
	A: .word 1,2,3,4,5,6,7,8,9
.text
	LDR R0, =A
	MOV R1, #0 ;key register
	MOV R2, #9 ;count register
	MOV R3, #0 ;flag register
find_loop:
	LDR R4, [R0], #4
	CMP R4, R1
	BEQ found
	SUB R2, R2, #1
	CMP R2, #0
	BNE find_loop
	B end
found:
	MOV R3, #1; search successful, element found
	B end
end:
	SWI 0x11
	
	 
	