global _start
section .data
section .bss
	a	resq  10
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
	sub rsp, 15
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 5
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 6
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
	sub rsp, 16
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 5
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 6
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
	sub rsp, 8
	mov qword  [rsp], 0
;  10) t3 = 0
	mov rax, 0
	mov qword  [ rbp - 711 ] , rax
;  11) i = t3
	mov rax, [ rbp - 711]
	mov qword  [ rbp - 719 ] , rax
;  12) t4 = 1
	mov rax, 1
	mov qword  [ rbp - 727 ] , rax
;  13) r = t4
	mov rax, [ rbp - 727]
	mov qword  [ rbp - 735 ] , rax
;  14) t5 = &n
	mov rax, rbp
	sub rax, 703
	mov qword  [ rbp - 743 ] , rax
;  15) param t5
	sub rsp, 8
	mov rax,  [rbp - 743]
	mov qword  [rsp], rax
;  16) t6 = call readInt , 1
	call readInt
	mov  [ rbp - 751 ] , r15
;  17) t7 = 1
	mov rax, 1
	mov qword  [ rbp - 759 ] , rax
;  18) i = t7
	mov rax, [ rbp - 759]
	mov qword  [ rbp - 719 ] , rax
;  19) if i <= n goto 26
label_19:
	mov rax, [ rbp - 719]
	mov rbx, [ rbp - 703]
	cmp rax, rbx
	jle label_26
;  20) goto 29
	jmp label_29
;  21) goto 29
	jmp label_29
;  22) t8 = 1
label_22:
	mov rax, 1
	mov qword  [ rbp - 767 ] , rax
;  23) t9 = i + t8
	mov rax, [ rbp - 719]
	mov rbx, [ rbp - 767]
	add rax, rbx
	mov qword  [ rbp - 775 ] , rax
;  24) i = t9
	mov rax, [ rbp - 775]
	mov qword  [ rbp - 719 ] , rax
;  25) goto 19
	jmp label_19
;  26) t10 = r * i
label_26:
	mov rax, [ rbp - 735]
	mov rbx, [ rbp - 719]
	imul rax, rbx
	mov qword  [ rbp - 783 ] , rax
;  27) r = t10
	mov rax, [ rbp - 783]
	mov qword  [ rbp - 735 ] , rax
;  28) goto 22
	jmp label_22
;  29) param n
label_29:
	sub rsp, 8
	mov rax,  [rbp - 703]
	mov qword  [rsp], rax
;  30) t11 = call printInt , 1
	call printInt
	mov  [ rbp - 791 ] , r15
;  31) t12 = "! = "
	mov byte [rbp - 796] , 33
	mov byte [rbp - 795] , 32
	mov byte [rbp - 794] , 61
	mov byte [rbp - 793] , 32
	mov byte [rbp - 792] , 0
;  32) param t12
	sub rsp, 8
	mov rax, rbp
	sub rax, 796
	mov qword [rsp], rax
;  33) t13 = call printStr , 1
	call printStr
	mov  [ rbp - 804 ] , r15
;  34) param r
	sub rsp, 8
	mov rax,  [rbp - 735]
	mov qword  [rsp], rax
;  35) t14 = call printInt , 1
	call printInt
	mov  [ rbp - 812 ] , r15
;  36) t15 = 0
	mov rax, 0
	mov qword  [ rbp - 820 ] , rax
;  37) return t15
	mov r15, [ rbp - 820]
	mov rsp, rbp
	pop rbp
ret
