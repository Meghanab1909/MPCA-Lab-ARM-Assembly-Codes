.data
    size:   .word 4
    matrix: .word 1, 2, 3, 4
            .word 5, 6, 7, 8
	    .word 9, 10, 11, 12
            .word 13, 14, 15, 16

.text
    LDR R0, =size
    LDR R1, [R0]
    LDR R2, =matrix
    MOV R3, #0

outer_loop:
    CMP R3, R1
    BGE end_program

    MOV R4, #0

inner_loop:
    CMP R4, R1
    BGE next_row

    MUL R5, R3, R1
    ADD R5, R5, R4
    ADD R5, R5, R5
    ADD R5, R5, R5
    ADD R6, R2, R5
    
    CMP R3, R4
    BEQ set_five
    MOV R7, #0
    B store_value

set_five:
    MOV R7, #5

store_value:
    STR R7, [R6]

    ADD R4, R4, #1
    B inner_loop
    
next_row:
    ADD R3, R3, #1
    B outer_loop

end_program:
    SWI 0x11
