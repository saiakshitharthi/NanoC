global _start
section .data
section .bss
	arr	resq  10
	a	resq  10
section .text
extern readInt
extern printInt
extern printStr
_start:
;   9) binarySearch : 
;  49) main : 
	call main
	mov rax, 60
	xor rdi, rdi
	syscall
binarySearch:
	push rbp
	mov rbp, rsp
	sub rsp, 8
	mov rax,  [rsp + 40]
	mov qword  [rsp], rax
	sub rsp, 8
	mov rax,  [rsp + 40]
	mov qword  [rsp], rax
	sub rsp, 8
	mov rax,  [rsp + 40]
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
;  10) if r >= l goto 13
	mov rax, [ rbp - 16]
	mov rbx, [ rbp - 8]
	cmp rax, rbx
	jge label_13
;  11) goto 46
	jmp label_46
;  12) goto 46
	jmp label_46
;  13) t3 = r - l
label_13:
	mov rax, [ rbp - 16]
	mov rbx, [ rbp - 8]
	sub rax, rbx
	mov qword  [ rbp - 32 ] , rax
;  14) t4 = 2
	mov rax, 2
	mov qword  [ rbp - 40 ] , rax
;  15) t5 = t3 / t4
	mov rax, [ rbp - 32]
	mov rbx, [ rbp - 40]
	idiv rbx
	mov qword  [ rbp - 48 ] , rax
;  16) t6 = l + t5
	mov rax, [ rbp - 8]
	mov rbx, [ rbp - 48]
	add rax, rbx
	mov qword  [ rbp - 56 ] , rax
;  17) mid = t6
	mov rax, [ rbp - 56]
	mov qword  [ rbp - 64 ] , rax
;  18) t7 = mid
	mov rax, [ rbp - 64]
	mov qword  [ rbp - 72 ] , rax
;  19) t8 = arr[t7]
	mov rbx,arr
	mov rax, [ rbp - 72]
	imul rax,8
	add rax, rbx
	mov rax, [rax]
	mov qword  [ rbp - 80 ] , rax
;  20) if t8 == x goto 23
	mov rax, [ rbp - 80]
	mov rbx, [ rbp - 24]
	cmp rax, rbx
	je label_23
;  21) goto 25
	jmp label_25
;  22) goto 25
	jmp label_25
;  23) return mid
label_23:
	mov r15, [ rbp - 64]
	mov rsp, rbp
	pop rbp
ret
;  25) t9 = mid
label_25:
	mov rax, [ rbp - 64]
	mov qword  [ rbp - 88 ] , rax
;  26) t10 = arr[t9]
	mov rbx,arr
	mov rax, [ rbp - 88]
	imul rax,8
	add rax, rbx
	mov rax, [rax]
	mov qword  [ rbp - 96 ] , rax
;  27) if t10 > x goto 30
	mov rax, [ rbp - 96]
	mov rbx, [ rbp - 24]
	cmp rax, rbx
	jg label_30
;  28) goto 38
	jmp label_38
;  29) goto 38
	jmp label_38
;  30) t11 = 1
label_30:
	mov rax, 1
	mov qword  [ rbp - 104 ] , rax
;  31) t12 = mid - t11
	mov rax, [ rbp - 64]
	mov rbx, [ rbp - 104]
	sub rax, rbx
	mov qword  [ rbp - 112 ] , rax
;  32) param l
	sub rsp, 8
	mov rax,  [rbp - 8]
	mov qword  [rsp], rax
;  33) param t12
	sub rsp, 8
	mov rax,  [rbp - 112]
	mov qword  [rsp], rax
;  34) param x
	sub rsp, 8
	mov rax,  [rbp - 24]
	mov qword  [rsp], rax
;  35) t13 = call binarySearch , 3
	call binarySearch
	mov  [ rbp - 120 ] , r15
;  36) return t13
	mov r15, [ rbp - 120]
	mov rsp, rbp
	pop rbp
ret
;  38) t14 = 1
label_38:
	mov rax, 1
	mov qword  [ rbp - 128 ] , rax
;  39) t15 = mid + t14
	mov rax, [ rbp - 64]
	mov rbx, [ rbp - 128]
	add rax, rbx
	mov qword  [ rbp - 136 ] , rax
;  40) param t15
	sub rsp, 8
	mov rax,  [rbp - 136]
	mov qword  [rsp], rax
;  41) param r
	sub rsp, 8
	mov rax,  [rbp - 16]
	mov qword  [rsp], rax
;  42) param x
	sub rsp, 8
	mov rax,  [rbp - 24]
	mov qword  [rsp], rax
;  43) t16 = call binarySearch , 3
	call binarySearch
	mov  [ rbp - 144 ] , r15
;  44) return t16
	mov r15, [ rbp - 144]
	mov rsp, rbp
	pop rbp
ret
;  46) t17 = 1
label_46:
	mov rax, 1
	mov qword  [ rbp - 152 ] , rax
;  47) t18 = -t17
	mov rax, [ rbp - 152]
	neg rax
	mov qword  [ rbp - 160 ] , rax
;  48) return t18
	mov r15, [ rbp - 160]
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
	sub rsp, 32
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 29
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
;  50) t19 = 5
	mov rax, 5
	mov qword  [ rbp - 1431 ] , rax
;  51) n = t19
	mov rax, [ rbp - 1431]
	mov qword  [ rbp - 1439 ] , rax
;  52) t20 = 0
	mov rax, 0
	mov qword  [ rbp - 1447 ] , rax
;  53) t21 = t20
	mov rax, [ rbp - 1447]
	mov qword  [ rbp - 1455 ] , rax
;  54) t22 = arr[t21]
	mov rbx,arr
	mov rax, [ rbp - 1455]
	imul rax,8
	add rax, rbx
	mov rax, [rax]
	mov qword  [ rbp - 1463 ] , rax
;  55) t23 = 2
	mov rax, 2
	mov qword  [ rbp - 1471 ] , rax
;  56) arr[t21] = t23
	mov rbx, arr
	mov rax, [ rbp - 1455]
	imul rax,8
	add rax, rbx
	mov rbx, [ rbp - 1471]
	mov qword [rax], rbx
;  57) t24 = 1
	mov rax, 1
	mov qword  [ rbp - 1479 ] , rax
;  58) t25 = t24
	mov rax, [ rbp - 1479]
	mov qword  [ rbp - 1487 ] , rax
;  59) t26 = arr[t25]
	mov rbx,arr
	mov rax, [ rbp - 1487]
	imul rax,8
	add rax, rbx
	mov rax, [rax]
	mov qword  [ rbp - 1495 ] , rax
;  60) t27 = 3
	mov rax, 3
	mov qword  [ rbp - 1503 ] , rax
;  61) arr[t25] = t27
	mov rbx, arr
	mov rax, [ rbp - 1487]
	imul rax,8
	add rax, rbx
	mov rbx, [ rbp - 1503]
	mov qword [rax], rbx
;  62) t28 = 2
	mov rax, 2
	mov qword  [ rbp - 1511 ] , rax
;  63) t29 = t28
	mov rax, [ rbp - 1511]
	mov qword  [ rbp - 1519 ] , rax
;  64) t30 = arr[t29]
	mov rbx,arr
	mov rax, [ rbp - 1519]
	imul rax,8
	add rax, rbx
	mov rax, [rax]
	mov qword  [ rbp - 1527 ] , rax
;  65) t31 = 4
	mov rax, 4
	mov qword  [ rbp - 1535 ] , rax
;  66) arr[t29] = t31
	mov rbx, arr
	mov rax, [ rbp - 1519]
	imul rax,8
	add rax, rbx
	mov rbx, [ rbp - 1535]
	mov qword [rax], rbx
;  67) t32 = 3
	mov rax, 3
	mov qword  [ rbp - 1543 ] , rax
;  68) t33 = t32
	mov rax, [ rbp - 1543]
	mov qword  [ rbp - 1551 ] , rax
;  69) t34 = arr[t33]
	mov rbx,arr
	mov rax, [ rbp - 1551]
	imul rax,8
	add rax, rbx
	mov rax, [rax]
	mov qword  [ rbp - 1559 ] , rax
;  70) t35 = 10
	mov rax, 10
	mov qword  [ rbp - 1567 ] , rax
;  71) arr[t33] = t35
	mov rbx, arr
	mov rax, [ rbp - 1551]
	imul rax,8
	add rax, rbx
	mov rbx, [ rbp - 1567]
	mov qword [rax], rbx
;  72) t36 = 4
	mov rax, 4
	mov qword  [ rbp - 1575 ] , rax
;  73) t37 = t36
	mov rax, [ rbp - 1575]
	mov qword  [ rbp - 1583 ] , rax
;  74) t38 = arr[t37]
	mov rbx,arr
	mov rax, [ rbp - 1583]
	imul rax,8
	add rax, rbx
	mov rax, [rax]
	mov qword  [ rbp - 1591 ] , rax
;  75) t39 = 40
	mov rax, 40
	mov qword  [ rbp - 1599 ] , rax
;  76) arr[t37] = t39
	mov rbx, arr
	mov rax, [ rbp - 1583]
	imul rax,8
	add rax, rbx
	mov rbx, [ rbp - 1599]
	mov qword [rax], rbx
;  77) t40 = 10
	mov rax, 10
	mov qword  [ rbp - 1607 ] , rax
;  78) x = t40
	mov rax, [ rbp - 1607]
	mov qword  [ rbp - 1615 ] , rax
;  79) t41 = 0
	mov rax, 0
	mov qword  [ rbp - 1623 ] , rax
;  80) t42 = 1
	mov rax, 1
	mov qword  [ rbp - 1631 ] , rax
;  81) t43 = n - t42
	mov rax, [ rbp - 1439]
	mov rbx, [ rbp - 1631]
	sub rax, rbx
	mov qword  [ rbp - 1639 ] , rax
;  82) param t41
	sub rsp, 8
	mov rax,  [rbp - 1623]
	mov qword  [rsp], rax
;  83) param t43
	sub rsp, 8
	mov rax,  [rbp - 1639]
	mov qword  [rsp], rax
;  84) param x
	sub rsp, 8
	mov rax,  [rbp - 1615]
	mov qword  [rsp], rax
;  85) t44 = call binarySearch , 3
	call binarySearch
	mov  [ rbp - 1647 ] , r15
;  86) result = t44
	mov rax, [ rbp - 1647]
	mov qword  [ rbp - 1655 ] , rax
;  87) t45 = 1
	mov rax, 1
	mov qword  [ rbp - 1663 ] , rax
;  88) t46 = -t45
	mov rax, [ rbp - 1663]
	neg rax
	mov qword  [ rbp - 1671 ] , rax
;  89) if result == t46 goto 92
	mov rax, [ rbp - 1655]
	mov rbx, [ rbp - 1671]
	cmp rax, rbx
	je label_92
;  90) goto 96
	jmp label_96
;  91) goto 101
	jmp label_101
;  92) t47 = "Element is not present in array"
label_92:
	mov byte [rbp - 1703] , 69
	mov byte [rbp - 1702] , 108
	mov byte [rbp - 1701] , 101
	mov byte [rbp - 1700] , 109
	mov byte [rbp - 1699] , 101
	mov byte [rbp - 1698] , 110
	mov byte [rbp - 1697] , 116
	mov byte [rbp - 1696] , 32
	mov byte [rbp - 1695] , 105
	mov byte [rbp - 1694] , 115
	mov byte [rbp - 1693] , 32
	mov byte [rbp - 1692] , 110
	mov byte [rbp - 1691] , 111
	mov byte [rbp - 1690] , 116
	mov byte [rbp - 1689] , 32
	mov byte [rbp - 1688] , 112
	mov byte [rbp - 1687] , 114
	mov byte [rbp - 1686] , 101
	mov byte [rbp - 1685] , 115
	mov byte [rbp - 1684] , 101
	mov byte [rbp - 1683] , 110
	mov byte [rbp - 1682] , 116
	mov byte [rbp - 1681] , 32
	mov byte [rbp - 1680] , 105
	mov byte [rbp - 1679] , 110
	mov byte [rbp - 1678] , 32
	mov byte [rbp - 1677] , 97
	mov byte [rbp - 1676] , 114
	mov byte [rbp - 1675] , 114
	mov byte [rbp - 1674] , 97
	mov byte [rbp - 1673] , 121
	mov byte [rbp - 1672] , 0
;  93) param t47
	sub rsp, 8
	mov rax, rbp
	sub rax, 1703
	mov qword [rsp], rax
;  94) t48 = call printStr , 1
	call printStr
	mov  [ rbp - 1711 ] , r15
;  95) goto 101
	jmp label_101
;  96) t49 = "Element is present at index "
label_96:
	mov byte [rbp - 1740] , 69
	mov byte [rbp - 1739] , 108
	mov byte [rbp - 1738] , 101
	mov byte [rbp - 1737] , 109
	mov byte [rbp - 1736] , 101
	mov byte [rbp - 1735] , 110
	mov byte [rbp - 1734] , 116
	mov byte [rbp - 1733] , 32
	mov byte [rbp - 1732] , 105
	mov byte [rbp - 1731] , 115
	mov byte [rbp - 1730] , 32
	mov byte [rbp - 1729] , 112
	mov byte [rbp - 1728] , 114
	mov byte [rbp - 1727] , 101
	mov byte [rbp - 1726] , 115
	mov byte [rbp - 1725] , 101
	mov byte [rbp - 1724] , 110
	mov byte [rbp - 1723] , 116
	mov byte [rbp - 1722] , 32
	mov byte [rbp - 1721] , 97
	mov byte [rbp - 1720] , 116
	mov byte [rbp - 1719] , 32
	mov byte [rbp - 1718] , 105
	mov byte [rbp - 1717] , 110
	mov byte [rbp - 1716] , 100
	mov byte [rbp - 1715] , 101
	mov byte [rbp - 1714] , 120
	mov byte [rbp - 1713] , 32
	mov byte [rbp - 1712] , 0
;  97) param t49
	sub rsp, 8
	mov rax, rbp
	sub rax, 1740
	mov qword [rsp], rax
;  98) t50 = call printStr , 1
	call printStr
	mov  [ rbp - 1748 ] , r15
;  99) param result
	sub rsp, 8
	mov rax,  [rbp - 1655]
	mov qword  [rsp], rax
; 100) t51 = call printInt , 1
	call printInt
	mov  [ rbp - 1756 ] , r15
; 101) t52 = 0
label_101:
	mov rax, 0
	mov qword  [ rbp - 1764 ] , rax
; 102) return t52
	mov r15, [ rbp - 1764]
	mov rsp, rbp
	pop rbp
ret
