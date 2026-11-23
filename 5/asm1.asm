.data
    a dd 7
    b dd 13
    c dd 23

.code
main proc
    mov eax, a
    imul c
    mov ecx, b
    sub ecx, eax
    add ecx, 1

    mov eax, b
    cdq
    mov ebx, 2
    idiv ebx
    mov ebx, eax

    mov eax, 53
    cdq
    idiv c
    sub ebx, eax

    mov eax, ebx
    cdq
    idiv ecx

    ret
main endp
end