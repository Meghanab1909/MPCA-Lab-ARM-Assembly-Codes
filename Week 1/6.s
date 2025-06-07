.text
	MOV R0, #5
	MOV R1, #1
	MOV R2, R0

factorial_loop: CMP R2, #1
		BLE end
		MOV R3, #1
		MUL R3, R1, R2
		MOV R1, R3
		SUB R2, R2, #1
		B factorial_loop
end:
	B end