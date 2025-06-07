;Write an ALP to set the LED to light up
MOV R0, #0

loop1:
	SWI 0x201
	ADD R0, R0, #1
	MOV R4, #64000

delay:
	SUB R4, R4, #1
	CMP R4, #0
	BNE delay
	CMP R0, #3
	BLE loop1
end:
	SWI 0x11