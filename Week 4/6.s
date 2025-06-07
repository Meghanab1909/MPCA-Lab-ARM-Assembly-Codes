;Write an ALP using ARM7TDMI to find the largest of all the BCD digits of a given 32-bit number.
;(hint: If R1=17845374 the largest digit is 8)

.text
	LDR R1, =0x17845374
	MOV R2, #0 ;max_digit
	MOV R3, #8

find_max_digit:
	AND R4, R1, #0xF
	CMP R4, R2
	BLS skip_update ;Branch less than or same (Used for BCD)
	MOV R2, R4

skip_update:
	MOV R1, R1, LSR #4
	SUBS R3, R3, #1
	BNE find_max_digit

end:
	SWI 0x11