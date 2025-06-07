.text
    MOV R0, #0xFFFFFFFF
    MOV R1, #0xFFFFFFFF
    MOV R2, #0xFFFFFFFF
    MOV R3, #0xFFFFFFFF
    MOV R4, #0xFFFFFFFF
    MOV R5, #0xFFFFFFFF
    MOV R6, #0xFFFFFFFF
    MOV R7, #0xFFFFFFFF

    MOV R8, #0
    MOV R9, #0
    MOV R10, #0
    MOV R11, #0

    ADD R8, R0, R1
    ADC R9, R9, R8

    ADD R10, R2, R3
    ADC R11, R11, R10

    ADD R12, R4, R5
    ADC R13, R13, R12

    ADD R14, R6, R7
    ADC R15, R15, R14

    MOV R8, R12
    MOV R9, R13
.end
