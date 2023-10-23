global _start
section .data
section .bss
section .text
extern readInt
extern printInt
extern printStr
_start:
;   9) main : 
	call main
	mov rax, 60
	xor rdi, rdi
	syscall
main:
	push rbp
	mov rbp, rsp
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 2
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 4
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 2
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 4
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
;  10) t3 = 2
	mov rax, 2
	mov qword  [ rbp - 110 ] , rax
;  11) x = t3
	mov rax, [ rbp - 110]
	mov qword  [ rbp - 118 ] , rax
;  12) t4 = 3
	mov rax, 3
	mov qword  [ rbp - 126 ] , rax
;  13) y = t4
	mov rax, [ rbp - 126]
	mov qword  [ rbp - 134 ] , rax
;  14) t5 = x + y
	mov rax, [ rbp - 118]
	mov rbx, [ rbp - 134]
	add rax, rbx
	mov qword  [ rbp - 150 ] , rax
;  15) z = t5
	mov rax, [ rbp - 150]
	mov qword  [ rbp - 142 ] , rax
;  16) param x
	sub rsp, 8
	mov rax,  [rbp - 118]
	mov qword  [rsp], rax
;  17) t6 = call printInt , 1
	call printInt
	mov  [ rbp - 158 ] , r15
;  18) t7 = "+"
	mov byte [rbp - 160] , 43
	mov byte [rbp - 159] , 0
;  19) param t7
	sub rsp, 8
	mov rax, rbp
	sub rax, 160
	mov qword [rsp], rax
;  20) t8 = call printStr , 1
	call printStr
	mov  [ rbp - 168 ] , r15
;  21) param y
	sub rsp, 8
	mov rax,  [rbp - 134]
	mov qword  [rsp], rax
;  22) t9 = call printInt , 1
	call printInt
	mov  [ rbp - 176 ] , r15
;  23) t10 = " = "
	mov byte [rbp - 180] , 32
	mov byte [rbp - 179] , 61
	mov byte [rbp - 178] , 32
	mov byte [rbp - 177] , 0
;  24) param t10
	sub rsp, 8
	mov rax, rbp
	sub rax, 180
	mov qword [rsp], rax
;  25) t11 = call printStr , 1
	call printStr
	mov  [ rbp - 188 ] , r15
;  26) param z
	sub rsp, 8
	mov rax,  [rbp - 142]
	mov qword  [rsp], rax
;  27) t12 = call printInt , 1
	call printInt
	mov  [ rbp - 196 ] , r15
;  28) t13 = 0
	mov rax, 0
	mov qword  [ rbp - 204 ] , rax
;  29) return t13
	mov r15, [ rbp - 204]
	mov rsp, rbp
	pop rbp
ret
