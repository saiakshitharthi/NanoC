global    _start

section   .data
    message:  db        "Hello, World", 10
    trueprint: db       "TRUE",10
    falseprint: db      "FALSE",10
    integerquestion: db  "Enter the value of k : ",0
    stringquestion: db  "Enter the string : ",0
    newline: db         10,0
    error:  db          "Value of k is greater than length of string!",10
    

section .bss
    input_text: resb 10000 
    input_number: resb 100


section   .text

    _start:
        
        call _printintegerquestion
        call _inputinteger                 ; result is stored in r15,which is the value of k
        call _printstringquestion
        call _inputtext                    ; this is the value of string
        

        mov r12, input_text                ;left pointer
        mov r13, input_text                ;right pointer
        add r13, r15
        dec r13
        push r12
        push r13

        push r15                           ;It contains the value of k

        mov r15,0
        mov r10,input_text

        ;Computing length of the input string and storing in r15
        startwhile:
            
            mov r14,r10
            mov r9, input_text
            sub r14,r9
            cmp r14, 10000
            jge end_startwhile
            cmp byte [r10],0
            je end_startwhile
                inc r15
                inc r10
                jmp startwhile
        end_startwhile:

        ;r15 has length of input (excluding last new line character)
        dec r15
        pop r9          ;It contains the value of k

        cmp r9,r15
        jg  _printerror

        ;checking whether all characters in the string are alphabets, (excluding last newline character).
        mov r14,0
        mov r9,0
        mov r10,input_text
        push r12
        push r13
            startwhile2:
                inc r9
                cmp r9,r15
                jg end_startwhile2
                cmp byte [r10], 'z'
                jg next1
                    cmp byte[r10],'a'
                    jl next1
                    inc r14
                next1:
                cmp byte [r10], 'Z'
                jg next2
                    cmp byte[r10],'A'
                    jl next2
                    inc r14

                next2:

                inc r10
                jmp startwhile2

            end_startwhile2:
        pop r13
        pop r12

        cmp r14,r15
        je make1
            mov r14,0
            jmp make1end
        make1:
            mov r14,1
        make1end:
        
        ;Reversing first k characters of the string.
        pop r13
        pop r12
        push r14
            twopointer:
                mov r10, r13
                sub r10,r12
                cmp r10,0
                jle endtwopointer
                mov r8b, [r12]                  ;left character
                mov r9b, [r13]                  ;right character
                mov byte [r12], r9b
                mov byte [r13], r8b
                inc r12
                dec r13
                jmp twopointer
            endtwopointer:
        pop r14
        
        inc r15
        ;Printing the output
        call _printtext
        ;Printing whether all characters are alphabets are not
        cmp r14,0
        je make2
            call _printtrue
            jmp make2end
        make2:
            call _printfalse
        make2end:
        ;exit system call
        mov       rax, 60                 ; system call for exit
        xor       rdi, rdi                ; exit code 0
        syscall                           ; invoke operating system to exit
_printerror:

    mov rax,1
    mov rdi,1
    mov rsi, error
    mov rdx, 45

    syscall
    mov       rax, 60 
    mov rdi, 1                 
    syscall      
ret                     
_printnewline:
    mov rax,1
    mov rdi,1
    mov rsi, newline
    mov rdx, 1
    syscall
ret

_printintegerquestion:

    mov rax,1
    mov rdi,1
    mov rsi,integerquestion
    mov rdx,23
    syscall
ret

_printstringquestion:

    mov rax,1
    mov rdi,1
    mov rsi,stringquestion
    mov rdx,19
    syscall
ret

_printtrue:
    mov rax,1
    mov rdi, 1
    mov rsi,trueprint
    mov rdx,5
    syscall
ret

_printfalse:
    mov rax,1
    mov rdi, 1
    mov rsi,falseprint
    mov rdx,6
    syscall
ret

;inputs integer as string and converts to integer
_inputinteger:
    ;system call to take input
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
ret

_inputtext:
                         
    xor rax,rax
    mov rdi, 0
    mov rsi, input_text
    mov rdx, 10000
    syscall
ret

;printing text of length in r15

_printtext:
    mov rax,1
    mov rdi,1
    mov rsi, input_text
    mov rdx, r15
    syscall
ret
