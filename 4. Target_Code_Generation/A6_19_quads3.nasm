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
	sub rsp, 5
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 3
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 3
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 5
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
;  10) t3 = &x
	mov rax, rbp
	sub rax, 372
	mov qword  [ rbp - 396 ] , rax
;  11) param t3
	sub rsp, 8
	mov rax,  [rbp - 396]
	mov qword  [rsp], rax
;  12) t4 = call readInt , 1
	call readInt
	mov  [ rbp - 404 ] , r15
;  13) t5 = &y
	mov rax, rbp
	sub rax, 380
	mov qword  [ rbp - 412 ] , rax
;  14) param t5
	sub rsp, 8
	mov rax,  [rbp - 412]
	mov qword  [rsp], rax
;  15) t6 = call readInt , 1
	call readInt
	mov  [ rbp - 420 ] , r15
;  16) t7 = x + y
	mov rax, [ rbp - 372]
	mov rbx, [ rbp - 380]
	add rax, rbx
	mov qword  [ rbp - 428 ] , rax
;  17) z = t7
	mov rax, [ rbp - 428]
	mov qword  [ rbp - 388 ] , rax
;  18) param x
	sub rsp, 8
	mov rax,  [rbp - 372]
	mov qword  [rsp], rax
;  19) t8 = call printInt , 1
	call printInt
	mov  [ rbp - 436 ] , r15
;  20) t9 = "+"
	mov byte [rbp - 438] , 43
	mov byte [rbp - 437] , 0
;  21) param t9
	sub rsp, 8
	mov rax, rbp
	sub rax, 438
	mov qword [rsp], rax
;  22) t10 = call printStr , 1
	call printStr
	mov  [ rbp - 446 ] , r15
;  23) param y
	sub rsp, 8
	mov rax,  [rbp - 380]
	mov qword  [rsp], rax
;  24) t11 = call printInt , 1
	call printInt
	mov  [ rbp - 454 ] , r15
;  25) t12 = " = "
	mov byte [rbp - 458] , 32
	mov byte [rbp - 457] , 61
	mov byte [rbp - 456] , 32
	mov byte [rbp - 455] , 0
;  26) param t12
	sub rsp, 8
	mov rax, rbp
	sub rax, 458
	mov qword [rsp], rax
;  27) t13 = call printStr , 1
	call printStr
	mov  [ rbp - 466 ] , r15
;  28) param z
	sub rsp, 8
	mov rax,  [rbp - 388]
	mov qword  [rsp], rax
;  29) t14 = call printInt , 1
	call printInt
	mov  [ rbp - 474 ] , r15
;  30) t15 = 0
	mov rax, 0
	mov qword  [ rbp - 482 ] , rax
;  31) return t15
	mov r15, [ rbp - 482]
	mov rsp, rbp
	pop rbp
ret
