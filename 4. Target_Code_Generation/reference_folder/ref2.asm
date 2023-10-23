global    _start


section   .data
    message:  db        "Hello, World", 10,0
    newline: db         10,0
    space: db         32,0
    tempchar: db        0
    inputfilemessage: db "Enter the name of input file :"
    shortestmessage: db  "Shortest word is :"
    longestmessage: db  "Longest word is :"
    shortestlen: db  "Shortest length :"
    longestlen: db  "Longest length :"
    inputfilenameerror: db "Input file name does't exist!",10
    

section .bss
    smallest_word: resb 10000
    largest_word: resb 10000
    input: resb 1000000
    numberstack: resb 1000
    filename: resb   10000



section   .text


    _start:

        ;Initializing smallest_word,and largest_word to null values
        mov byte[smallest_word],0
        mov byte[largest_word],0

        call _printinputfilemessage
        call _inputfilename
        ;Taking input from input.txt file
        
        mov r15,0
        mov r10,filename

        ;Removing newline character from input
        startwhile:
            
            mov r14,r10
            mov r9, filename
            sub r14,r9
            cmp r14, 10000
            jge end_startwhile
            cmp byte [r10],32
            jle end_startwhile
                inc r15
                inc r10
                jmp startwhile
        end_startwhile:
        mov byte [r10],0


        ;Storing file descriptor in rax
        mov rax, 2
        mov rdi, filename
        mov rsi, 0
        mov rdx, 0644o
        syscall

        cmp rax,0
        jle _printinputfilenameerror

        
        mov r15,rax         ;File descriptor

        mov r13,input       ;input pointer
        mov r14,0           ;length of the word

        mov r9,10000           ;smallest word length
        mov r10,0              ;largest word length


        ;Reading the file character by character:
        while:
            mov rax,0
            mov rdi, r15
            mov rcx,10
            mov rsi, tempchar
            mov rdx, 1
            syscall


            ;Below, I am checking whether it is end of word
            cmp rax,0
            je process_word

            ;I am treating words 
            cmp byte [tempchar], 32
            jle process_word

            ;if it is not the end of word, I am adding that to the currently processing word

            push r15

                mov r15b, [tempchar] 
                mov byte [r13], r15b

            pop r15

            inc r13
            inc r14

            jmp skip_process_word

            process_word:

                cmp r14,0
                    je end_process_word


                cmp r14,r9
                    jge process_max_length

                mov r9,r14

                mov r12,smallest_word
                mov r13,input

                push r14
                    while_copy_min_length:
                        push r10
                            mov r10b, [r13]
                            mov byte [r12], r10b
                        pop r10

                        inc r13
                        inc r12
                        dec r14

                        cmp r14,0
                        je end_while_copy_min_length

                        jmp while_copy_min_length
                    end_while_copy_min_length:
                pop r14

                process_max_length:
                    cmp r14,r10
                        jle end_process_word


                    mov r10,r14
                    mov r13,input
                    mov r12,largest_word
                    push r14
                        while_copy_max_length:
                            push r10
                            mov r10b, [r13]
                            mov byte [r12], r10b
                            pop r10
                            inc r13
                            inc r12
                            dec r14
                            cmp r14,0
                            je end_while_copy_max_length

                            jmp while_copy_max_length
                        end_while_copy_max_length:

                    pop r14

            end_process_word:

                mov r13,input 
                mov r14,0

            skip_process_word:
                cmp rax,0
                je endwhile
                jmp while
        endwhile:

        cmp r9,r10
        jle skip_change
            mov r9,r10

        skip_change:

        mov r15, shortestmessage
        mov rdx,18
        call _printmessage
        call _printspace
        call _printsmallestword
        call _printnewline
        mov r15, shortestlen
        mov rdx, 17
        call _printmessage
        call _printspace
        mov rdx,18
        push r9
        push r10
            mov r15,r9
            call _printnumber
        pop r10
        pop r9

        call _printnewline

        mov r15, longestmessage
        mov rdx, 17
        call _printmessage
        call _printspace
        call _printlargestword
        call _printnewline
        mov r15,longestlen
        mov rdx, 16
        call _printmessage
        call _printspace
        mov r15,r10
        call _printnumber

        call _printnewline

        mov       rax, 60                 ; system call for exit
        xor       rdi, rdi                ; exit code 0
        syscall                           ; invoke operating system to exit

_printinputfilenameerror:

    mov rax,1
    mov rdi, 1
    mov rsi,inputfilenameerror
    mov rdx,30
    syscall
    mov       rax, 60                 ; system call for exit
    mov rdi, 1
    syscall                           ; invoke operating system to exit
ret

_printinputfilemessage:
    mov rax,1
    mov rdi,1
    mov rsi, inputfilemessage
    mov rdx, 30
    syscall
ret
_inputfilename:
                         
    xor rax,rax
    mov rdi, 0
    mov rsi, filename
    mov rdx, 10000
    syscall
ret

_printtext:
    mov rax,1
    mov rdi,1
    mov rsi, input
    mov rdx, 10
    syscall
ret

_printmessage:
    mov rax,1
    mov rdi,1
    mov rsi, r15
    syscall
ret

_printchar:
    mov rax,1
    mov rdi,1
    mov rsi, tempchar
    mov rdx, 1
    syscall
ret
_printhelloworld:
    mov rax,1
    mov rdi,1
    mov rsi, message
    mov rdx, 13
    syscall
ret

_printsmallestword:
    mov rax,1
    mov rdi,1
    mov rsi, smallest_word
    mov rdx, r9
    syscall
ret


_printlargestword:
    mov rax,1
    mov rdi,1
    mov rsi, largest_word
    mov rdx, r10
    syscall
ret

_printnewline:
    mov rax,1
    mov rdi,1
    mov rsi, newline
    mov rdx, 1
    syscall
ret

_printspace:
    mov rax,1
    mov rdi,1
    mov rsi, space
    mov rdx, 1
    syscall
ret

_printnumber:
    ;store number in r15
    ; r15 has actual number
    ; r14 has constant 10
    ; r13 stores the last pointer of numberstack
    ; r12 stores stores count of ascii value of the number
    ; rdx stores remainder
    ; division operation on rax, and rcx and don't forget to make rdx as 0


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


ret