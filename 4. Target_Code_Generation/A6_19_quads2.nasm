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
;  10) t3 = 20
	mov rax, 20
	mov qword  [ rbp - 212 ] , rax
;  11) x = t3
	mov rax, [ rbp - 212]
	mov qword  [ rbp - 220 ] , rax
;  12) t4 = 32
	mov rax, 32
	mov qword  [ rbp - 228 ] , rax
;  13) y = t4
	mov rax, [ rbp - 228]
	mov qword  [ rbp - 236 ] , rax
;  14) t5 = 123
	mov rax, 123
	mov qword  [ rbp - 244 ] , rax
;  15) z = t5
	mov rax, [ rbp - 244]
	mov qword  [ rbp - 252 ] , rax
;  16) if x > y goto 19
	mov rax, [ rbp - 220]
	mov rbx, [ rbp - 236]
	cmp rax, rbx
	jg label_19
;  17) goto 20
	jmp label_20
;  18) goto 24
	jmp label_24
;  19) goto 22
label_19:
	jmp label_22
;  20) t6 = y
label_20:
	mov rax, [ rbp - 236]
	mov qword  [ rbp - 268 ] , rax
;  21) goto 24
	jmp label_24
;  22) t6 = x
label_22:
	mov rax, [ rbp - 220]
	mov qword  [ rbp - 268 ] , rax
;  23) goto 24
	jmp label_24
;  24) m = t6
label_24:
	mov rax, [ rbp - 268]
	mov qword  [ rbp - 260 ] , rax
;  25) if m > z goto 28
	mov rax, [ rbp - 260]
	mov rbx, [ rbp - 252]
	cmp rax, rbx
	jg label_28
;  26) goto 29
	jmp label_29
;  27) goto 33
	jmp label_33
;  28) goto 31
label_28:
	jmp label_31
;  29) t7 = z
label_29:
	mov rax, [ rbp - 252]
	mov qword  [ rbp - 276 ] , rax
;  30) goto 33
	jmp label_33
;  31) t7 = m
label_31:
	mov rax, [ rbp - 260]
	mov qword  [ rbp - 276 ] , rax
;  32) goto 33
	jmp label_33
;  33) m = t7
label_33:
	mov rax, [ rbp - 276]
	mov qword  [ rbp - 260 ] , rax
;  34) t8 = "max("
	mov byte [rbp - 281] , 109
	mov byte [rbp - 280] , 97
	mov byte [rbp - 279] , 120
	mov byte [rbp - 278] , 40
	mov byte [rbp - 277] , 0
;  35) param t8
	sub rsp, 8
	mov rax, rbp
	sub rax, 281
	mov qword [rsp], rax
;  36) t9 = call printStr , 1
	call printStr
	mov  [ rbp - 289 ] , r15
;  37) param x
	sub rsp, 8
	mov rax,  [rbp - 220]
	mov qword  [rsp], rax
;  38) t10 = call printInt , 1
	call printInt
	mov  [ rbp - 297 ] , r15
;  39) t11 = ", "
	mov byte [rbp - 300] , 44
	mov byte [rbp - 299] , 32
	mov byte [rbp - 298] , 0
;  40) param t11
	sub rsp, 8
	mov rax, rbp
	sub rax, 300
	mov qword [rsp], rax
;  41) t12 = call printStr , 1
	call printStr
	mov  [ rbp - 308 ] , r15
;  42) param y
	sub rsp, 8
	mov rax,  [rbp - 236]
	mov qword  [rsp], rax
;  43) t13 = call printInt , 1
	call printInt
	mov  [ rbp - 316 ] , r15
;  44) t14 = ", "
	mov byte [rbp - 319] , 44
	mov byte [rbp - 318] , 32
	mov byte [rbp - 317] , 0
;  45) param t14
	sub rsp, 8
	mov rax, rbp
	sub rax, 319
	mov qword [rsp], rax
;  46) t15 = call printStr , 1
	call printStr
	mov  [ rbp - 327 ] , r15
;  47) param z
	sub rsp, 8
	mov rax,  [rbp - 252]
	mov qword  [rsp], rax
;  48) t16 = call printInt , 1
	call printInt
	mov  [ rbp - 335 ] , r15
;  49) t17 = ") = "
	mov byte [rbp - 340] , 41
	mov byte [rbp - 339] , 32
	mov byte [rbp - 338] , 61
	mov byte [rbp - 337] , 32
	mov byte [rbp - 336] , 0
;  50) param t17
	sub rsp, 8
	mov rax, rbp
	sub rax, 340
	mov qword [rsp], rax
;  51) t18 = call printStr , 1
	call printStr
	mov  [ rbp - 348 ] , r15
;  52) param m
	sub rsp, 8
	mov rax,  [rbp - 260]
	mov qword  [rsp], rax
;  53) t19 = call printInt , 1
	call printInt
	mov  [ rbp - 356 ] , r15
;  54) t20 = 0
	mov rax, 0
	mov qword  [ rbp - 364 ] , rax
;  55) return t20
	mov r15, [ rbp - 364]
	mov rsp, rbp
	pop rbp
ret
