global _start
section .data
section .bss
	arr	resq  20
section .text
extern readInt
extern printInt
extern printStr
_start:
;   9) swap : 
;  16) readArray : 
;  35) printArray : 
;  57) bubbleSort : 
; 103) main : 
	call main
	mov rax, 60
	xor rdi, rdi
	syscall
swap:
	push rbp
	mov rbp, rsp
	sub rsp, 8
	mov rax,  [rsp + 32]
	mov qword  [rsp], rax
	sub rsp, 8
	mov rax,  [rsp + 32]
	mov qword  [rsp], rax
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
;  10) t3 = *p
	mov rbx, [ rbp - 8]
	mov rax, [rbx]
	mov qword  [ rbp - 24 ] , rax
;  11) t = t3
	mov rax, [ rbp - 24]
	mov qword  [ rbp - 32 ] , rax
;  12) t4 = *q
	mov rbx, [ rbp - 16]
	mov rax, [rbx]
	mov qword  [ rbp - 40 ] , rax
;  13) *p = t4
	mov rbx, [ rbp - 40]
	mov r15, [ rbp - 8]
	mov [r15] , rbx
;  14) *q = t
	mov rbx, [ rbp - 32]
	mov r15, [ rbp - 16]
	mov [r15] , rbx
;  15) return
	mov rsp, rbp
	pop rbp
ret
readArray:
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
	sub rsp, 21
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
;  17) t5 = 0
	mov rax, 0
	mov qword  [ rbp - 24 ] , rax
;  18) i = t5
	mov rax, [ rbp - 24]
	mov qword  [ rbp - 16 ] , rax
;  19) if i < size goto 26
label_19:
	mov rax, [ rbp - 16]
	mov rbx, [ rbp - 8]
	cmp rax, rbx
	jl label_26
;  20) goto 34
	jmp label_34
;  21) goto 34
	jmp label_34
;  22) t6 = 1
label_22:
	mov rax, 1
	mov qword  [ rbp - 32 ] , rax
;  23) t7 = i + t6
	mov rax, [ rbp - 16]
	mov rbx, [ rbp - 32]
	add rax, rbx
	mov qword  [ rbp - 40 ] , rax
;  24) i = t7
	mov rax, [ rbp - 40]
	mov qword  [ rbp - 16 ] , rax
;  25) goto 19
	jmp label_19
;  26) t8 = "Input next element\n"
label_26:
	mov byte [rbp - 61] , 73
	mov byte [rbp - 60] , 110
	mov byte [rbp - 59] , 112
	mov byte [rbp - 58] , 117
	mov byte [rbp - 57] , 116
	mov byte [rbp - 56] , 32
	mov byte [rbp - 55] , 110
	mov byte [rbp - 54] , 101
	mov byte [rbp - 53] , 120
	mov byte [rbp - 52] , 116
	mov byte [rbp - 51] , 32
	mov byte [rbp - 50] , 101
	mov byte [rbp - 49] , 108
	mov byte [rbp - 48] , 101
	mov byte [rbp - 47] , 109
	mov byte [rbp - 46] , 101
	mov byte [rbp - 45] , 110
	mov byte [rbp - 44] , 116
	mov byte [rbp - 43] , 10
	mov byte [rbp - 42] , 0
;  27) param t8
	sub rsp, 8
	mov rax, rbp
	sub rax, 61
	mov qword [rsp], rax
;  28) t9 = call printStr , 1
	call printStr
	mov  [ rbp - 69 ] , r15
;  29) t10 = i
	mov rax, [ rbp - 16]
	mov qword  [ rbp - 77 ] , rax
;  30) t11 = &arr[t10]
	mov rbx,arr
	mov rax, [ rbp - 77]
	imul rax,8
	add rax, rbx
	mov qword  [ rbp - 85 ] , rax
;  31) param t11
	sub rsp, 8
	mov rax,  [rbp - 85]
	mov qword  [rsp], rax
;  32) t12 = call readInt , 1
	call readInt
	mov  [ rbp - 93 ] , r15
;  33) goto 22
	jmp label_22
;  34) return
label_34:
	mov rsp, rbp
	pop rbp
ret
printArray:
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
	sub rsp, 2
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 3
	sub rsp, 8
	mov qword  [rsp], 0
;  36) t13 = 0
	mov rax, 0
	mov qword  [ rbp - 24 ] , rax
;  37) i = t13
	mov rax, [ rbp - 24]
	mov qword  [ rbp - 16 ] , rax
;  38) if i < size goto 45
label_38:
	mov rax, [ rbp - 16]
	mov rbx, [ rbp - 8]
	cmp rax, rbx
	jl label_45
;  39) goto 53
	jmp label_53
;  40) goto 53
	jmp label_53
;  41) t14 = 1
label_41:
	mov rax, 1
	mov qword  [ rbp - 32 ] , rax
;  42) t15 = i + t14
	mov rax, [ rbp - 16]
	mov rbx, [ rbp - 32]
	add rax, rbx
	mov qword  [ rbp - 40 ] , rax
;  43) i = t15
	mov rax, [ rbp - 40]
	mov qword  [ rbp - 16 ] , rax
;  44) goto 38
	jmp label_38
;  45) t16 = i
label_45:
	mov rax, [ rbp - 16]
	mov qword  [ rbp - 48 ] , rax
;  46) t17 = arr[t16]
	mov rbx,arr
	mov rax, [ rbp - 48]
	imul rax,8
	add rax, rbx
	mov rax, [rax]
	mov qword  [ rbp - 56 ] , rax
;  47) param t17
	sub rsp, 8
	mov rax,  [rbp - 56]
	mov qword  [rsp], rax
;  48) t18 = call printInt , 1
	call printInt
	mov  [ rbp - 64 ] , r15
;  49) t19 = " "
	mov byte [rbp - 66] , 32
	mov byte [rbp - 65] , 0
;  50) param t19
	sub rsp, 8
	mov rax, rbp
	sub rax, 66
	mov qword [rsp], rax
;  51) t20 = call printStr , 1
	call printStr
	mov  [ rbp - 74 ] , r15
;  52) goto 41
	jmp label_41
;  53) t21 = "\n"
label_53:
	mov byte [rbp - 77] , 10
	mov byte [rbp - 76] , 0
;  54) param t21
	sub rsp, 8
	mov rax, rbp
	sub rax, 77
	mov qword [rsp], rax
;  55) t22 = call printStr , 1
	call printStr
	mov  [ rbp - 85 ] , r15
;  56) return
	mov rsp, rbp
	pop rbp
ret
bubbleSort:
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
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
;  58) t23 = 0
	mov rax, 0
	mov qword  [ rbp - 32 ] , rax
;  59) i = t23
	mov rax, [ rbp - 32]
	mov qword  [ rbp - 16 ] , rax
;  60) t24 = 1
label_60:
	mov rax, 1
	mov qword  [ rbp - 40 ] , rax
;  61) t25 = n - t24
	mov rax, [ rbp - 8]
	mov rbx, [ rbp - 40]
	sub rax, rbx
	mov qword  [ rbp - 48 ] , rax
;  62) if i < t25 goto 69
	mov rax, [ rbp - 16]
	mov rbx, [ rbp - 48]
	cmp rax, rbx
	jl label_69
;  63) goto 102
	jmp label_102
;  64) goto 102
	jmp label_102
;  65) t26 = 1
label_65:
	mov rax, 1
	mov qword  [ rbp - 56 ] , rax
;  66) t27 = i + t26
	mov rax, [ rbp - 16]
	mov rbx, [ rbp - 56]
	add rax, rbx
	mov qword  [ rbp - 64 ] , rax
;  67) i = t27
	mov rax, [ rbp - 64]
	mov qword  [ rbp - 16 ] , rax
;  68) goto 60
	jmp label_60
;  69) t28 = 0
label_69:
	mov rax, 0
	mov qword  [ rbp - 72 ] , rax
;  70) j = t28
	mov rax, [ rbp - 72]
	mov qword  [ rbp - 24 ] , rax
;  71) t29 = n - i
label_71:
	mov rax, [ rbp - 8]
	mov rbx, [ rbp - 16]
	sub rax, rbx
	mov qword  [ rbp - 80 ] , rax
;  72) t30 = 1
	mov rax, 1
	mov qword  [ rbp - 88 ] , rax
;  73) t31 = t29 - t30
	mov rax, [ rbp - 80]
	mov rbx, [ rbp - 88]
	sub rax, rbx
	mov qword  [ rbp - 96 ] , rax
;  74) if j < t31 goto 81
	mov rax, [ rbp - 24]
	mov rbx, [ rbp - 96]
	cmp rax, rbx
	jl label_81
;  75) goto 65
	jmp label_65
;  76) goto 101
	jmp label_101
;  77) t32 = 1
label_77:
	mov rax, 1
	mov qword  [ rbp - 104 ] , rax
;  78) t33 = j + t32
	mov rax, [ rbp - 24]
	mov rbx, [ rbp - 104]
	add rax, rbx
	mov qword  [ rbp - 112 ] , rax
;  79) j = t33
	mov rax, [ rbp - 112]
	mov qword  [ rbp - 24 ] , rax
;  80) goto 71
	jmp label_71
;  81) t34 = j
label_81:
	mov rax, [ rbp - 24]
	mov qword  [ rbp - 120 ] , rax
;  82) t35 = arr[t34]
	mov rbx,arr
	mov rax, [ rbp - 120]
	imul rax,8
	add rax, rbx
	mov rax, [rax]
	mov qword  [ rbp - 128 ] , rax
;  83) t36 = 1
	mov rax, 1
	mov qword  [ rbp - 136 ] , rax
;  84) t37 = j + t36
	mov rax, [ rbp - 24]
	mov rbx, [ rbp - 136]
	add rax, rbx
	mov qword  [ rbp - 144 ] , rax
;  85) t38 = t37
	mov rax, [ rbp - 144]
	mov qword  [ rbp - 152 ] , rax
;  86) t39 = arr[t38]
	mov rbx,arr
	mov rax, [ rbp - 152]
	imul rax,8
	add rax, rbx
	mov rax, [rax]
	mov qword  [ rbp - 160 ] , rax
;  87) if t35 > t39 goto 90
	mov rax, [ rbp - 128]
	mov rbx, [ rbp - 160]
	cmp rax, rbx
	jg label_90
;  88) goto 77
	jmp label_77
;  89) goto 100
	jmp label_100
;  90) t40 = j
label_90:
	mov rax, [ rbp - 24]
	mov qword  [ rbp - 168 ] , rax
;  91) t41 = &arr[t40]
	mov rbx,arr
	mov rax, [ rbp - 168]
	imul rax,8
	add rax, rbx
	mov qword  [ rbp - 176 ] , rax
;  92) t42 = 1
	mov rax, 1
	mov qword  [ rbp - 184 ] , rax
;  93) t43 = j + t42
	mov rax, [ rbp - 24]
	mov rbx, [ rbp - 184]
	add rax, rbx
	mov qword  [ rbp - 192 ] , rax
;  94) t44 = t43
	mov rax, [ rbp - 192]
	mov qword  [ rbp - 200 ] , rax
;  95) t45 = &arr[t44]
	mov rbx,arr
	mov rax, [ rbp - 200]
	imul rax,8
	add rax, rbx
	mov qword  [ rbp - 208 ] , rax
;  96) param t41
	sub rsp, 8
	mov rax,  [rbp - 176]
	mov qword  [rsp], rax
;  97) param t45
	sub rsp, 8
	mov rax,  [rbp - 208]
	mov qword  [rsp], rax
;  98) t46 = call swap , 2
	call swap
	mov  [ rbp - 216 ] , r15
; 100) goto 77
label_100:
	jmp label_77
; 101) goto 65
label_101:
	jmp label_65
; 102) return
label_102:
	mov rsp, rbp
	pop rbp
ret
main:
	push rbp
	mov rbp, rsp
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 21
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 25
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 16
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 17
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
	sub rsp, 8
	mov qword  [rsp], 0
; 104) t47 = "Input array size: \n"
	mov byte [rbp - 29] , 73
	mov byte [rbp - 28] , 110
	mov byte [rbp - 27] , 112
	mov byte [rbp - 26] , 117
	mov byte [rbp - 25] , 116
	mov byte [rbp - 24] , 32
	mov byte [rbp - 23] , 97
	mov byte [rbp - 22] , 114
	mov byte [rbp - 21] , 114
	mov byte [rbp - 20] , 97
	mov byte [rbp - 19] , 121
	mov byte [rbp - 18] , 32
	mov byte [rbp - 17] , 115
	mov byte [rbp - 16] , 105
	mov byte [rbp - 15] , 122
	mov byte [rbp - 14] , 101
	mov byte [rbp - 13] , 58
	mov byte [rbp - 12] , 32
	mov byte [rbp - 11] , 10
	mov byte [rbp - 10] , 0
; 105) param t47
	sub rsp, 8
	mov rax, rbp
	sub rax, 29
	mov qword [rsp], rax
; 106) t48 = call printStr , 1
	call printStr
	mov  [ rbp - 37 ] , r15
; 107) t49 = &n
	mov rax, rbp
	sub rax, 8
	mov qword  [ rbp - 45 ] , rax
; 108) param t49
	sub rsp, 8
	mov rax,  [rbp - 45]
	mov qword  [rsp], rax
; 109) t50 = call readInt , 1
	call readInt
	mov  [ rbp - 53 ] , r15
; 110) param n
	sub rsp, 8
	mov rax,  [rbp - 8]
	mov qword  [rsp], rax
; 111) t51 = call printInt , 1
	call printInt
	mov  [ rbp - 61 ] , r15
; 112) t52 = "Input array elements: \n"
	mov byte [rbp - 86] , 73
	mov byte [rbp - 85] , 110
	mov byte [rbp - 84] , 112
	mov byte [rbp - 83] , 117
	mov byte [rbp - 82] , 116
	mov byte [rbp - 81] , 32
	mov byte [rbp - 80] , 97
	mov byte [rbp - 79] , 114
	mov byte [rbp - 78] , 114
	mov byte [rbp - 77] , 97
	mov byte [rbp - 76] , 121
	mov byte [rbp - 75] , 32
	mov byte [rbp - 74] , 101
	mov byte [rbp - 73] , 108
	mov byte [rbp - 72] , 101
	mov byte [rbp - 71] , 109
	mov byte [rbp - 70] , 101
	mov byte [rbp - 69] , 110
	mov byte [rbp - 68] , 116
	mov byte [rbp - 67] , 115
	mov byte [rbp - 66] , 58
	mov byte [rbp - 65] , 32
	mov byte [rbp - 64] , 10
	mov byte [rbp - 63] , 0
; 113) param t52
	sub rsp, 8
	mov rax, rbp
	sub rax, 86
	mov qword [rsp], rax
; 114) t53 = call printStr , 1
	call printStr
	mov  [ rbp - 94 ] , r15
; 115) param n
	sub rsp, 8
	mov rax,  [rbp - 8]
	mov qword  [rsp], rax
; 116) t54 = call readArray , 1
	call readArray
	mov  [ rbp - 102 ] , r15
; 117) t55 = "Input array: \n"
	mov byte [rbp - 118] , 73
	mov byte [rbp - 117] , 110
	mov byte [rbp - 116] , 112
	mov byte [rbp - 115] , 117
	mov byte [rbp - 114] , 116
	mov byte [rbp - 113] , 32
	mov byte [rbp - 112] , 97
	mov byte [rbp - 111] , 114
	mov byte [rbp - 110] , 114
	mov byte [rbp - 109] , 97
	mov byte [rbp - 108] , 121
	mov byte [rbp - 107] , 58
	mov byte [rbp - 106] , 32
	mov byte [rbp - 105] , 10
	mov byte [rbp - 104] , 0
; 118) param t55
	sub rsp, 8
	mov rax, rbp
	sub rax, 118
	mov qword [rsp], rax
; 119) t56 = call printStr , 1
	call printStr
	mov  [ rbp - 126 ] , r15
; 120) param n
	sub rsp, 8
	mov rax,  [rbp - 8]
	mov qword  [rsp], rax
; 121) t57 = call printArray , 1
	call printArray
	mov  [ rbp - 134 ] , r15
; 122) param n
	sub rsp, 8
	mov rax,  [rbp - 8]
	mov qword  [rsp], rax
; 123) t58 = call bubbleSort , 1
	call bubbleSort
	mov  [ rbp - 142 ] , r15
; 124) t59 = "Sorted array: \n"
	mov byte [rbp - 159] , 83
	mov byte [rbp - 158] , 111
	mov byte [rbp - 157] , 114
	mov byte [rbp - 156] , 116
	mov byte [rbp - 155] , 101
	mov byte [rbp - 154] , 100
	mov byte [rbp - 153] , 32
	mov byte [rbp - 152] , 97
	mov byte [rbp - 151] , 114
	mov byte [rbp - 150] , 114
	mov byte [rbp - 149] , 97
	mov byte [rbp - 148] , 121
	mov byte [rbp - 147] , 58
	mov byte [rbp - 146] , 32
	mov byte [rbp - 145] , 10
	mov byte [rbp - 144] , 0
; 125) param t59
	sub rsp, 8
	mov rax, rbp
	sub rax, 159
	mov qword [rsp], rax
; 126) t60 = call printStr , 1
	call printStr
	mov  [ rbp - 167 ] , r15
; 127) param n
	sub rsp, 8
	mov rax,  [rbp - 8]
	mov qword  [rsp], rax
; 128) t61 = call printArray , 1
	call printArray
	mov  [ rbp - 175 ] , r15
; 129) t62 = 0
	mov rax, 0
	mov qword  [ rbp - 183 ] , rax
; 130) return t62
	mov r15, [ rbp - 183]
	mov rsp, rbp
	pop rbp
ret
