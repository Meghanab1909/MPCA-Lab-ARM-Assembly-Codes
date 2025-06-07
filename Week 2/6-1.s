;Write an ALP using ARM7TDMI to perform multiplication of 38 x 72 without mul instructions 
;(Hint: barrel shifter instructions). 
;(Note: Any number can be considered as multiplier)

.text
	MOV R0, #72
	MOV R1, R0, LSL #5
	MOV R2, R0, LSL #2
	MOV R3, R0, LSL #1
	ADD R4, R1, R2
	ADD R4, R4, R3
.end