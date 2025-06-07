;Write an ALP using ARM7TDMI to perform multiplication of 38 x 72 without mul instructions 
;(Hint: barrel shifter instructions). 
;(Note: Any number can be considered as multiplier)

.text
	MOV R0, #38
	MOV R1, R0, LSL #6
	MOV R2, R0, LSL #3
	ADD R3, R1, R2
.end