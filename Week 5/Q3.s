;Write an ALP using ARM7TDMI to find the substring present or not

.data
    main_string: .asciz "HELLOARM"
    sub_string:  .asciz "ARM1"
    found_msg:   .asciz "Found\n"
    notfound_msg:.asciz "Not Found\n"

.text
    LDR R0, =main_string   
    LDR R1, =sub_string    

search_loop:
    LDRB R2, [R0]          
    CMP R2, #0             
    BEQ not_found          

    LDRB R3, [R1]          
    CMP R2, R3             
    BEQ check_substring    

    ADD R0, R0, #1         
    B search_loop          

check_substring:
    MOV R6, R0             
    MOV R7, R1             

match_loop:
    LDRB R2, [R6], #1      
    LDRB R3, [R7], #1      

    CMP R3, #0             
    BEQ found

    CMP R2, R3             
    BNE restore_main       

    B match_loop           

restore_main:
    ADD R0, R0, #1         
    B search_loop

found:
    LDR R0, =found_msg     
    SWI 0x02               
    B exit

not_found:
    LDR R0, =notfound_msg  
    SWI 0x02               

exit:
    SWI 0x11               
	
	



