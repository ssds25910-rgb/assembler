.data
    a dd 10
    b dd 15
    X dd ?
.code
main proc
    mov eax, a
    cmp eax, b
    je do_if            
    jg end_if           
    mov eax, 3
    mov ebx, b
    imul ebx            
    sub eax, 9          
    mov edx, 0          
    cmp eax, 0
    jge div_less
    mov edx, -1
div_less:
    mov ebx, a
    idiv ebx            
    mov X, eax
    ret
do_if:                  
    mov eax, -11
    mov X, eax
    ret
end_if:                 
    mov eax, a
    mov edx, 0          
    cmp eax, 0
    jge div_greater
    mov edx, -1
div_greater:
    mov ebx, b
    idiv ebx           
    add eax, 11        
    mov X, eax
    ret
main endp
end