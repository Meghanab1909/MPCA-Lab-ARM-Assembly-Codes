.text
    MOV R0, #4 ;R0 to be changed accordingly
    TST R0, #1
    BEQ EVEN

ODD:
    MOV R0, #1
    B end

EVEN:
    MOV R0, #0

end:
    B end
