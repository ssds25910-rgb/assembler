;Найти количество элементов массива удовлетворяют условию a[i]<=с/d.data
.data
    numbers dword 11, 21, 44, 35, 65, 96, 47, 78  
    i dw 0                                  
    c dword 100                              
    d dword 4                                
    count dword 0                               
.code
main proc
    mov eax, c
    cdq     
    idiv d      
    mov edi, eax 
    lea rbx, numbers 
    mov i, 0    
    mov eax, 0 
for_start:
    cmp i, 8       
    jnl for_end   
    movzx rsi, i        
    mov edx, [rbx+rsi*4]
    cmp edx, edi
    jle increment_count 
    jmp inc_i     
increment_count:
    inc eax 
inc_i:
    inc i
    jmp for_start  
for_end:
    mov count, eax 
    ret         
main endp
end