global _start
section .data
section .bss
	a	resq  10
section .text
extern readInt
extern printInt
extern printStr
_start:
;   9) factorial : 
;  23) main : 
label_23:
	call main
	mov rax, 60
	xor rdi, rdi
	syscall
factorial:
	push rbp
	mov rbp, rsp
	sub rsp, 8
	mov rax,  [rsp + 24]
	mov qword  [rsp], rax
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
;  10) t3 = 0
	mov rax, 0
	mov qword  [ rbp - 16 ] , rax
;  11) if n == t3 goto 14
	mov rax, [ rbp - 8]
	mov rbx, [ rbp - 16]
	cmp rax, rbx
	je label_14
;  12) goto 17
	jmp label_17
;  13) goto 23
	jmp label_23
;  14) t4 = 1
label_14:
	mov rax, 1
	mov qword  [ rbp - 24 ] , rax
;  15) return t4
	mov r15, [ rbp - 24]
	mov rsp, rbp
	pop rbp
ret
;  17) t5 = 1
label_17:
	mov rax, 1
	mov qword  [ rbp - 32 ] , rax
;  18) t6 = n - t5
	mov rax, [ rbp - 8]
	mov rbx, [ rbp - 32]
	sub rax, rbx
	mov qword  [ rbp - 40 ] , rax
;  19) param t6
	sub rsp, 8
	mov rax,  [rbp - 40]
	mov qword  [rsp], rax
;  20) t7 = call factorial , 1
	call factorial
	mov  [ rbp - 48 ] , r15
;  21) t8 = n * t7
	mov rax, [ rbp - 8]
	mov rbx, [ rbp - 48]
	imul rax, rbx
	mov qword  [ rbp - 56 ] , rax
;  22) return t8
	mov r15, [ rbp - 56]
	mov rsp, rbp
	pop rbp
ret
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
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 80
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
	sub rsp, 9
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
	sub rsp, 3
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
;  24) t9 = 5
	mov rax, 5
	mov qword  [ rbp - 1279 ] , rax
;  25) n = t9
	mov rax, [ rbp - 1279]
	mov qword  [ rbp - 1287 ] , rax
;  26) param n
	sub rsp, 8
	mov rax,  [rbp - 1287]
	mov qword  [rsp], rax
;  27) t10 = call factorial , 1
	call factorial
	mov  [ rbp - 1303 ] , r15
;  28) r = t10
	mov rax, [ rbp - 1303]
	mov qword  [ rbp - 1295 ] , rax
;  29) param n
	sub rsp, 8
	mov rax,  [rbp - 1287]
	mov qword  [rsp], rax
;  30) t11 = call printInt , 1
	call printInt
	mov  [ rbp - 1311 ] , r15
;  31) t12 = "! = "
	mov byte [rbp - 1316] , 33
	mov byte [rbp - 1315] , 32
	mov byte [rbp - 1314] , 61
	mov byte [rbp - 1313] , 32
	mov byte [rbp - 1312] , 0
;  32) param t12
	sub rsp, 8
	mov rax, rbp
	sub rax, 1316
	mov qword [rsp], rax
;  33) t13 = call printStr , 1
	call printStr
	mov  [ rbp - 1324 ] , r15
;  34) param r
	sub rsp, 8
	mov rax,  [rbp - 1295]
	mov qword  [rsp], rax
;  35) t14 = call printInt , 1
	call printInt
	mov  [ rbp - 1332 ] , r15
;  36) t15 = 0
	mov rax, 0
	mov qword  [ rbp - 1340 ] , rax
;  37) return t15
	mov r15, [ rbp - 1340]
	mov rsp, rbp
	pop rbp
ret
