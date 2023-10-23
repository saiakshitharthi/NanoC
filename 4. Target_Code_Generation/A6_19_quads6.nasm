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
;  10) t3 = &n
	mov rax, rbp
	sub rax, 828
	mov qword  [ rbp - 932 ] , rax
;  11) param t3
	sub rsp, 8
	mov rax,  [rbp - 932]
	mov qword  [rsp], rax
;  12) t4 = call readInt , 1
	call readInt
	mov  [ rbp - 940 ] , r15
;  13) t5 = 0
	mov rax, 0
	mov qword  [ rbp - 948 ] , rax
;  14) i = t5
	mov rax, [ rbp - 948]
	mov qword  [ rbp - 924 ] , rax
;  15) if i < n goto 22
label_15:
	mov rax, [ rbp - 924]
	mov rbx, [ rbp - 828]
	cmp rax, rbx
	jl label_22
;  16) goto 29
	jmp label_29
;  17) goto 29
	jmp label_29
;  18) t6 = 1
label_18:
	mov rax, 1
	mov qword  [ rbp - 956 ] , rax
;  19) t7 = i + t6
	mov rax, [ rbp - 924]
	mov rbx, [ rbp - 956]
	add rax, rbx
	mov qword  [ rbp - 964 ] , rax
;  20) i = t7
	mov rax, [ rbp - 964]
	mov qword  [ rbp - 924 ] , rax
;  21) goto 15
	jmp label_15
;  22) t8 = &m
label_22:
	mov rax, rbp
	sub rax, 916
	mov qword  [ rbp - 972 ] , rax
;  23) param t8
	sub rsp, 8
	mov rax,  [rbp - 972]
	mov qword  [rsp], rax
;  24) t9 = call readInt , 1
	call readInt
	mov  [ rbp - 980 ] , r15
;  25) t10 = i
	mov rax, [ rbp - 924]
	mov qword  [ rbp - 988 ] , rax
;  26) t11 = a[t10]
	mov rbx, rbp
	sub rbx, 908
	mov rax, [ rbp - 988]
	imul rax,8
	add rax, rbx
	mov rax, [rax]
	mov qword  [ rbp - 996 ] , rax
;  27) a[t10] = m
	mov rbx, rbp
	sub rbx, 908
	mov rax, [ rbp - 988]
	imul rax,8
	add rax, rbx
	mov rbx, [ rbp - 916]
	mov qword [rax], rbx
;  28) goto 18
	jmp label_18
;  29) t12 = 0
label_29:
	mov rax, 0
	mov qword  [ rbp - 1004 ] , rax
;  30) i = t12
	mov rax, [ rbp - 1004]
	mov qword  [ rbp - 924 ] , rax
;  31) if i < n goto 38
label_31:
	mov rax, [ rbp - 924]
	mov rbx, [ rbp - 828]
	cmp rax, rbx
	jl label_38
;  32) goto 46
	jmp label_46
;  33) goto 46
	jmp label_46
;  34) t13 = 1
label_34:
	mov rax, 1
	mov qword  [ rbp - 1012 ] , rax
;  35) t14 = i + t13
	mov rax, [ rbp - 924]
	mov rbx, [ rbp - 1012]
	add rax, rbx
	mov qword  [ rbp - 1020 ] , rax
;  36) i = t14
	mov rax, [ rbp - 1020]
	mov qword  [ rbp - 924 ] , rax
;  37) goto 31
	jmp label_31
;  38) t15 = i
label_38:
	mov rax, [ rbp - 924]
	mov qword  [ rbp - 1028 ] , rax
;  39) t16 = a[t15]
	mov rbx, rbp
	sub rbx, 908
	mov rax, [ rbp - 1028]
	imul rax,8
	add rax, rbx
	mov rax, [rax]
	mov qword  [ rbp - 1036 ] , rax
;  40) param t16
	sub rsp, 8
	mov rax,  [rbp - 1036]
	mov qword  [rsp], rax
;  41) t17 = call printInt , 1
	call printInt
	mov  [ rbp - 1044 ] , r15
;  42) t18 = " "
	mov byte [rbp - 1046] , 32
	mov byte [rbp - 1045] , 0
;  43) param t18
	sub rsp, 8
	mov rax, rbp
	sub rax, 1046
	mov qword [rsp], rax
;  44) t19 = call printStr , 1
	call printStr
	mov  [ rbp - 1054 ] , r15
;  45) goto 34
	jmp label_34
;  46) t20 = 0
label_46:
	mov rax, 0
	mov qword  [ rbp - 1062 ] , rax
;  47) t21 = t20
	mov rax, [ rbp - 1062]
	mov qword  [ rbp - 1070 ] , rax
;  48) t22 = a[t21]
	mov rbx, rbp
	sub rbx, 908
	mov rax, [ rbp - 1070]
	imul rax,8
	add rax, rbx
	mov rax, [rax]
	mov qword  [ rbp - 1078 ] , rax
;  49) m = t22
	mov rax, [ rbp - 1078]
	mov qword  [ rbp - 916 ] , rax
;  50) t23 = 1
	mov rax, 1
	mov qword  [ rbp - 1086 ] , rax
;  51) i = t23
	mov rax, [ rbp - 1086]
	mov qword  [ rbp - 924 ] , rax
;  52) if i < n goto 59
label_52:
	mov rax, [ rbp - 924]
	mov rbx, [ rbp - 828]
	cmp rax, rbx
	jl label_59
;  53) goto 69
	jmp label_69
;  54) goto 69
	jmp label_69
;  55) t24 = 1
label_55:
	mov rax, 1
	mov qword  [ rbp - 1094 ] , rax
;  56) t25 = i + t24
	mov rax, [ rbp - 924]
	mov rbx, [ rbp - 1094]
	add rax, rbx
	mov qword  [ rbp - 1102 ] , rax
;  57) i = t25
	mov rax, [ rbp - 1102]
	mov qword  [ rbp - 924 ] , rax
;  58) goto 52
	jmp label_52
;  59) t26 = i
label_59:
	mov rax, [ rbp - 924]
	mov qword  [ rbp - 1110 ] , rax
;  60) t27 = a[t26]
	mov rbx, rbp
	sub rbx, 908
	mov rax, [ rbp - 1110]
	imul rax,8
	add rax, rbx
	mov rax, [rax]
	mov qword  [ rbp - 1118 ] , rax
;  61) if t27 > m goto 64
	mov rax, [ rbp - 1118]
	mov rbx, [ rbp - 916]
	cmp rax, rbx
	jg label_64
;  62) goto 55
	jmp label_55
;  63) goto 68
	jmp label_68
;  64) t28 = i
label_64:
	mov rax, [ rbp - 924]
	mov qword  [ rbp - 1126 ] , rax
;  65) t29 = a[t28]
	mov rbx, rbp
	sub rbx, 908
	mov rax, [ rbp - 1126]
	imul rax,8
	add rax, rbx
	mov rax, [rax]
	mov qword  [ rbp - 1134 ] , rax
;  66) m = t29
	mov rax, [ rbp - 1134]
	mov qword  [ rbp - 916 ] , rax
;  68) goto 55
label_68:
	jmp label_55
;  69) t30 = "Max of: "
label_69:
	mov byte [rbp - 1143] , 77
	mov byte [rbp - 1142] , 97
	mov byte [rbp - 1141] , 120
	mov byte [rbp - 1140] , 32
	mov byte [rbp - 1139] , 111
	mov byte [rbp - 1138] , 102
	mov byte [rbp - 1137] , 58
	mov byte [rbp - 1136] , 32
	mov byte [rbp - 1135] , 0
;  70) param t30
	sub rsp, 8
	mov rax, rbp
	sub rax, 1143
	mov qword [rsp], rax
;  71) t31 = call printStr , 1
	call printStr
	mov  [ rbp - 1151 ] , r15
;  72) t32 = 0
	mov rax, 0
	mov qword  [ rbp - 1159 ] , rax
;  73) t33 = t32
	mov rax, [ rbp - 1159]
	mov qword  [ rbp - 1167 ] , rax
;  74) t34 = a[t33]
	mov rbx, rbp
	sub rbx, 908
	mov rax, [ rbp - 1167]
	imul rax,8
	add rax, rbx
	mov rax, [rax]
	mov qword  [ rbp - 1175 ] , rax
;  75) param t34
	sub rsp, 8
	mov rax,  [rbp - 1175]
	mov qword  [rsp], rax
;  76) t35 = call printInt , 1
	call printInt
	mov  [ rbp - 1183 ] , r15
;  77) t36 = 1
	mov rax, 1
	mov qword  [ rbp - 1191 ] , rax
;  78) i = t36
	mov rax, [ rbp - 1191]
	mov qword  [ rbp - 924 ] , rax
;  79) if i < n goto 86
label_79:
	mov rax, [ rbp - 924]
	mov rbx, [ rbp - 828]
	cmp rax, rbx
	jl label_86
;  80) goto 94
	jmp label_94
;  81) goto 94
	jmp label_94
;  82) t37 = 1
label_82:
	mov rax, 1
	mov qword  [ rbp - 1199 ] , rax
;  83) t38 = i + t37
	mov rax, [ rbp - 924]
	mov rbx, [ rbp - 1199]
	add rax, rbx
	mov qword  [ rbp - 1207 ] , rax
;  84) i = t38
	mov rax, [ rbp - 1207]
	mov qword  [ rbp - 924 ] , rax
;  85) goto 79
	jmp label_79
;  86) t39 = ", "
label_86:
	mov byte [rbp - 1210] , 44
	mov byte [rbp - 1209] , 32
	mov byte [rbp - 1208] , 0
;  87) param t39
	sub rsp, 8
	mov rax, rbp
	sub rax, 1210
	mov qword [rsp], rax
;  88) t40 = call printStr , 1
	call printStr
	mov  [ rbp - 1218 ] , r15
;  89) t41 = i
	mov rax, [ rbp - 924]
	mov qword  [ rbp - 1226 ] , rax
;  90) t42 = a[t41]
	mov rbx, rbp
	sub rbx, 908
	mov rax, [ rbp - 1226]
	imul rax,8
	add rax, rbx
	mov rax, [rax]
	mov qword  [ rbp - 1234 ] , rax
;  91) param t42
	sub rsp, 8
	mov rax,  [rbp - 1234]
	mov qword  [rsp], rax
;  92) t43 = call printInt , 1
	call printInt
	mov  [ rbp - 1242 ] , r15
;  93) goto 82
	jmp label_82
;  94) t44 = ": = "
label_94:
	mov byte [rbp - 1247] , 58
	mov byte [rbp - 1246] , 32
	mov byte [rbp - 1245] , 61
	mov byte [rbp - 1244] , 32
	mov byte [rbp - 1243] , 0
;  95) param t44
	sub rsp, 8
	mov rax, rbp
	sub rax, 1247
	mov qword [rsp], rax
;  96) t45 = call printStr , 1
	call printStr
	mov  [ rbp - 1255 ] , r15
;  97) param m
	sub rsp, 8
	mov rax,  [rbp - 916]
	mov qword  [rsp], rax
;  98) t46 = call printInt , 1
	call printInt
	mov  [ rbp - 1263 ] , r15
;  99) t47 = 0
	mov rax, 0
	mov qword  [ rbp - 1271 ] , rax
; 100) return t47
	mov r15, [ rbp - 1271]
	mov rsp, rbp
	pop rbp
ret
