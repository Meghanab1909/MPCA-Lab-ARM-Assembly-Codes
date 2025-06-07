.text
	MOV R0, #18
	MOV R1, #18

gcd_loop: 
	CMP R1, #0
	BEQ end

find_remainder:
	CMP R0, R1
	BLT update_values
	SUB R0, R0, R1
	B find_remainder

update_values:
	MOV R2, R0
	MOV R0, R1
	MOV R1, R2
	B gcd_loop

end:
	B end
	