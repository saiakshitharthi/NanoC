global _start
section .data
section .bss
	a	resq  10
section .text
extern readInt
extern printInt
extern printStr
_start:
;   9) fibonacci : 
;  26) f_odd : 
;  47) f_even : 
;  68) main : 
	call main
	mov rax, 60
	xor rdi, rdi
	syscall
fibonacci:
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
;  10) t3 = 2
	mov rax, 2
	mov qword  [ rbp - 16 ] , rax
;  11) t4 = n % t3
	mov rax, [ rbp - 8]
	mov rbx, [ rbp - 16]
	idiv rbx
	mov rax, rdx
	mov qword  [ rbp - 24 ] , rax
;  12) t5 = 0
	mov rax, 0
	mov qword  [ rbp - 32 ] , rax
;  13) if t4 == t5 goto 16
	mov rax, [ rbp - 24]
	mov rbx, [ rbp - 32]
	cmp rax, rbx
	je label_16
;  14) goto 19
	jmp label_19
;  15) goto 25
	jmp label_25
;  16) param n
label_16:
	sub rsp, 8
	mov rax,  [rbp - 8]
	mov qword  [rsp], rax
;  17) t6 = call f_even , 1
	call f_even
	mov  [ rbp - 40 ] , r15
;  18) goto 23
	jmp label_23
;  19) param n
label_19:
	sub rsp, 8
	mov rax,  [rbp - 8]
	mov qword  [rsp], rax
;  20) t7 = call f_odd , 1
	call f_odd
	mov  [ rbp - 48 ] , r15
;  21) t8 = t7
	mov rax, [ rbp - 48]
	mov qword  [ rbp - 56 ] , rax
;  22) goto 25
	jmp label_25
;  23) t8 = t6
label_23:
	mov rax, [ rbp - 40]
	mov qword  [ rbp - 56 ] , rax
;  24) goto 25
	jmp label_25
;  25) return t8
label_25:
	mov r15, [ rbp - 56]
	mov rsp, rbp
	pop rbp
ret
f_odd:
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
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
;  27) t9 = 1
	mov rax, 1
	mov qword  [ rbp - 16 ] , rax
;  28) if n == t9 goto 31
	mov rax, [ rbp - 8]
	mov rbx, [ rbp - 16]
	cmp rax, rbx
	je label_31
;  29) goto 33
	jmp label_33
;  30) goto 46
	jmp label_46
;  31) t10 = 1
label_31:
	mov rax, 1
	mov qword  [ rbp - 24 ] , rax
;  32) goto 44
	jmp label_44
;  33) t11 = 1
label_33:
	mov rax, 1
	mov qword  [ rbp - 32 ] , rax
;  34) t12 = n - t11
	mov rax, [ rbp - 8]
	mov rbx, [ rbp - 32]
	sub rax, rbx
	mov qword  [ rbp - 40 ] , rax
;  35) param t12
	sub rsp, 8
	mov rax,  [rbp - 40]
	mov qword  [rsp], rax
;  36) t13 = call f_even , 1
	call f_even
	mov  [ rbp - 48 ] , r15
;  37) t14 = 2
	mov rax, 2
	mov qword  [ rbp - 56 ] , rax
;  38) t15 = n - t14
	mov rax, [ rbp - 8]
	mov rbx, [ rbp - 56]
	sub rax, rbx
	mov qword  [ rbp - 64 ] , rax
;  39) param t15
	sub rsp, 8
	mov rax,  [rbp - 64]
	mov qword  [rsp], rax
;  40) t16 = call f_odd , 1
	call f_odd
	mov  [ rbp - 72 ] , r15
;  41) t17 = t13 + t16
	mov rax, [ rbp - 48]
	mov rbx, [ rbp - 72]
	add rax, rbx
	mov qword  [ rbp - 80 ] , rax
;  42) t18 = t17
	mov rax, [ rbp - 80]
	mov qword  [ rbp - 88 ] , rax
;  43) goto 46
	jmp label_46
;  44) t18 = t10
label_44:
	mov rax, [ rbp - 24]
	mov qword  [ rbp - 88 ] , rax
;  45) goto 46
	jmp label_46
;  46) return t18
label_46:
	mov r15, [ rbp - 88]
	mov rsp, rbp
	pop rbp
ret
f_even:
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
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
;  48) t19 = 0
	mov rax, 0
	mov qword  [ rbp - 16 ] , rax
;  49) if n == t19 goto 52
	mov rax, [ rbp - 8]
	mov rbx, [ rbp - 16]
	cmp rax, rbx
	je label_52
;  50) goto 54
	jmp label_54
;  51) goto 67
	jmp label_67
;  52) t20 = 0
label_52:
	mov rax, 0
	mov qword  [ rbp - 24 ] , rax
;  53) goto 65
	jmp label_65
;  54) t21 = 1
label_54:
	mov rax, 1
	mov qword  [ rbp - 32 ] , rax
;  55) t22 = n - t21
	mov rax, [ rbp - 8]
	mov rbx, [ rbp - 32]
	sub rax, rbx
	mov qword  [ rbp - 40 ] , rax
;  56) param t22
	sub rsp, 8
	mov rax,  [rbp - 40]
	mov qword  [rsp], rax
;  57) t23 = call f_odd , 1
	call f_odd
	mov  [ rbp - 48 ] , r15
;  58) t24 = 2
	mov rax, 2
	mov qword  [ rbp - 56 ] , rax
;  59) t25 = n - t24
	mov rax, [ rbp - 8]
	mov rbx, [ rbp - 56]
	sub rax, rbx
	mov qword  [ rbp - 64 ] , rax
;  60) param t25
	sub rsp, 8
	mov rax,  [rbp - 64]
	mov qword  [rsp], rax
;  61) t26 = call f_even , 1
	call f_even
	mov  [ rbp - 72 ] , r15
;  62) t27 = t23 + t26
	mov rax, [ rbp - 48]
	mov rbx, [ rbp - 72]
	add rax, rbx
	mov qword  [ rbp - 80 ] , rax
;  63) t28 = t27
	mov rax, [ rbp - 80]
	mov qword  [ rbp - 88 ] , rax
;  64) goto 67
	jmp label_67
;  65) t28 = t20
label_65:
	mov rax, [ rbp - 24]
	mov qword  [ rbp - 88 ] , rax
;  66) goto 67
	jmp label_67
;  67) return t28
label_67:
	mov r15, [ rbp - 88]
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
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 6
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
;  69) t29 = 30
	mov rax, 30
	mov qword  [ rbp - 1348 ] , rax
;  70) n = t29
	mov rax, [ rbp - 1348]
	mov qword  [ rbp - 1356 ] , rax
;  71) param n
	sub rsp, 8
	mov rax,  [rbp - 1356]
	mov qword  [rsp], rax
;  72) t30 = call fibonacci , 1
	call fibonacci
	mov  [ rbp - 1372 ] , r15
;  73) r = t30
	mov rax, [ rbp - 1372]
	mov qword  [ rbp - 1364 ] , rax
;  74) t31 = "fibo("
	mov byte [rbp - 1378] , 102
	mov byte [rbp - 1377] , 105
	mov byte [rbp - 1376] , 98
	mov byte [rbp - 1375] , 111
	mov byte [rbp - 1374] , 40
	mov byte [rbp - 1373] , 0
;  75) param t31
	sub rsp, 8
	mov rax, rbp
	sub rax, 1378
	mov qword [rsp], rax
;  76) t32 = call printStr , 1
	call printStr
	mov  [ rbp - 1386 ] , r15
;  77) param n
	sub rsp, 8
	mov rax,  [rbp - 1356]
	mov qword  [rsp], rax
;  78) t33 = call printInt , 1
	call printInt
	mov  [ rbp - 1394 ] , r15
;  79) t34 = ") = "
	mov byte [rbp - 1399] , 41
	mov byte [rbp - 1398] , 32
	mov byte [rbp - 1397] , 61
	mov byte [rbp - 1396] , 32
	mov byte [rbp - 1395] , 0
;  80) param t34
	sub rsp, 8
	mov rax, rbp
	sub rax, 1399
	mov qword [rsp], rax
;  81) t35 = call printStr , 1
	call printStr
	mov  [ rbp - 1407 ] , r15
;  82) param r
	sub rsp, 8
	mov rax,  [rbp - 1364]
	mov qword  [rsp], rax
;  83) t36 = call printInt , 1
	call printInt
	mov  [ rbp - 1415 ] , r15
;  84) t37 = 0
	mov rax, 0
	mov qword  [ rbp - 1423 ] , rax
;  85) return t37
	mov r15, [ rbp - 1423]
	mov rsp, rbp
	pop rbp
ret
