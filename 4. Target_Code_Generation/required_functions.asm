section .data
    trueprint: db       "TRUE",10
section .bss
    input_text: resb 10000 
    input_number: resb 100
    numberstack: resb 1000
section .text
global readInt
global printInt
global printStr

readInt:
    ;system call to take input
    push rbp
	mov rbp, rsp
    mov rbx, [rsp+16]

    xor r15,r15                           ; Stores input integer
    xor r14,r14                           ; Stores temp integer
    xor rax,rax
    mov rdi, 0
    mov rsi, input_number                 
    mov rdx, 100
    syscall

    ;converting to number (input only takes numbers, whenever there is a character which is not a number, it ignores
    mov r13, input_number                  ; pointer
    while:

        cmp byte [r13],'0'
        jl endwhile
        cmp byte [r13],'9'
        jg endwhile

        mov rax,r15
        mov r15,10
        mul r15
        mov r15,rax
        mov r14b, [r13]
        sub r14b, 48
        add r15, r14
        add r13,1
    jmp while
    endwhile:
    mov [rbx], r15
    mov rsp, rbp
    pop rbp
ret

printInt:
    ;store number in r15
    push rbp
	mov rbp, rsp
    mov r15, [rsp+16]
    mov r13,numberstack
    add r13,1000
    xor r12,r12
    while_printnumber:

        cmp r15,10
        jl end_while_printnumber
        dec r13
        mov rdx,0
        mov rax,r15
        mov rcx,10
        div rcx
        mov r15,rax
        add rdx,48
        mov byte [r13],dl
        inc r12
        cmp r15,0
        jge while_printnumber
    end_while_printnumber:
    dec r13
    add r15,48
    mov byte [r13],r15b
    inc r12

    mov rax,1
    mov rdi,1
    mov rsi, r13
    mov rdx, r12
    syscall
    mov rsp, rbp
    pop rbp
ret

printStr:
    push rbp
	mov rbp, rsp
    mov rsi, [rsp + 16]
.loop:
    mov al, byte [rsi]   
    or al, al           
    jz .done             
    mov rax,1
    mov rdi,1
    mov rdx, 1
    syscall
    inc rsi
    jmp .loop            
.done:
    mov rsp, rbp
    pop rbp
ret
