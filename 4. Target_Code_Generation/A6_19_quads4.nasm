global _start
section .data
section .bss
section .text
extern readInt
extern printInt
extern printStr
_start:
;   9) main : 
;  49) swap : 
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
;  10) t3 = &x
	mov rax, rbp
	sub rax, 490
	mov qword  [ rbp - 506 ] , rax
;  11) param t3
	sub rsp, 8
	mov rax,  [rbp - 506]
	mov qword  [rsp], rax
;  12) t4 = call readInt , 1
	call readInt
	mov  [ rbp - 514 ] , r15
;  13) t5 = &y
	mov rax, rbp
	sub rax, 498
	mov qword  [ rbp - 522 ] , rax
;  14) param t5
	sub rsp, 8
	mov rax,  [rbp - 522]
	mov qword  [rsp], rax
;  15) t6 = call readInt , 1
	call readInt
	mov  [ rbp - 530 ] , r15
;  16) t7 = "Before swap:\n"
	mov byte [rbp - 545] , 66
	mov byte [rbp - 544] , 101
	mov byte [rbp - 543] , 102
	mov byte [rbp - 542] , 111
	mov byte [rbp - 541] , 114
	mov byte [rbp - 540] , 101
	mov byte [rbp - 539] , 32
	mov byte [rbp - 538] , 115
	mov byte [rbp - 537] , 119
	mov byte [rbp - 536] , 97
	mov byte [rbp - 535] , 112
	mov byte [rbp - 534] , 58
	mov byte [rbp - 533] , 10
	mov byte [rbp - 532] , 0
;  17) param t7
	sub rsp, 8
	mov rax, rbp
	sub rax, 545
	mov qword [rsp], rax
;  18) t8 = call printStr , 1
	call printStr
	mov  [ rbp - 553 ] , r15
;  19) t9 = "x = "
	mov byte [rbp - 558] , 120
	mov byte [rbp - 557] , 32
	mov byte [rbp - 556] , 61
	mov byte [rbp - 555] , 32
	mov byte [rbp - 554] , 0
;  20) param t9
	sub rsp, 8
	mov rax, rbp
	sub rax, 558
	mov qword [rsp], rax
;  21) t10 = call printStr , 1
	call printStr
	mov  [ rbp - 566 ] , r15
;  22) param x
	sub rsp, 8
	mov rax,  [rbp - 490]
	mov qword  [rsp], rax
;  23) t11 = call printInt , 1
	call printInt
	mov  [ rbp - 574 ] , r15
;  24) t12 = " y = "
	mov byte [rbp - 580] , 32
	mov byte [rbp - 579] , 121
	mov byte [rbp - 578] , 32
	mov byte [rbp - 577] , 61
	mov byte [rbp - 576] , 32
	mov byte [rbp - 575] , 0
;  25) param t12
	sub rsp, 8
	mov rax, rbp
	sub rax, 580
	mov qword [rsp], rax
;  26) t13 = call printStr , 1
	call printStr
	mov  [ rbp - 588 ] , r15
;  27) param y
	sub rsp, 8
	mov rax,  [rbp - 498]
	mov qword  [rsp], rax
;  28) t14 = call printInt , 1
	call printInt
	mov  [ rbp - 596 ] , r15
;  29) t15 = &x
	mov rax, rbp
	sub rax, 490
	mov qword  [ rbp - 604 ] , rax
;  30) t16 = &y
	mov rax, rbp
	sub rax, 498
	mov qword  [ rbp - 612 ] , rax
;  31) param t15
	sub rsp, 8
	mov rax,  [rbp - 604]
	mov qword  [rsp], rax
;  32) param t16
	sub rsp, 8
	mov rax,  [rbp - 612]
	mov qword  [rsp], rax
;  33) t17 = call swap , 2
	call swap
	mov  [ rbp - 620 ] , r15
;  34) t18 = "\nAfter swap:\n"
	mov byte [rbp - 636] , 10
	mov byte [rbp - 635] , 65
	mov byte [rbp - 634] , 102
	mov byte [rbp - 633] , 116
	mov byte [rbp - 632] , 101
	mov byte [rbp - 631] , 114
	mov byte [rbp - 630] , 32
	mov byte [rbp - 629] , 115
	mov byte [rbp - 628] , 119
	mov byte [rbp - 627] , 97
	mov byte [rbp - 626] , 112
	mov byte [rbp - 625] , 58
	mov byte [rbp - 624] , 10
	mov byte [rbp - 623] , 0
;  35) param t18
	sub rsp, 8
	mov rax, rbp
	sub rax, 636
	mov qword [rsp], rax
;  36) t19 = call printStr , 1
	call printStr
	mov  [ rbp - 644 ] , r15
;  37) t20 = "x = "
	mov byte [rbp - 649] , 120
	mov byte [rbp - 648] , 32
	mov byte [rbp - 647] , 61
	mov byte [rbp - 646] , 32
	mov byte [rbp - 645] , 0
;  38) param t20
	sub rsp, 8
	mov rax, rbp
	sub rax, 649
	mov qword [rsp], rax
;  39) t21 = call printStr , 1
	call printStr
	mov  [ rbp - 657 ] , r15
;  40) param x
	sub rsp, 8
	mov rax,  [rbp - 490]
	mov qword  [rsp], rax
;  41) t22 = call printInt , 1
	call printInt
	mov  [ rbp - 665 ] , r15
;  42) t23 = " y = "
	mov byte [rbp - 671] , 32
	mov byte [rbp - 670] , 121
	mov byte [rbp - 669] , 32
	mov byte [rbp - 668] , 61
	mov byte [rbp - 667] , 32
	mov byte [rbp - 666] , 0
;  43) param t23
	sub rsp, 8
	mov rax, rbp
	sub rax, 671
	mov qword [rsp], rax
;  44) t24 = call printStr , 1
	call printStr
	mov  [ rbp - 679 ] , r15
;  45) param y
	sub rsp, 8
	mov rax,  [rbp - 498]
	mov qword  [rsp], rax
;  46) t25 = call printInt , 1
	call printInt
	mov  [ rbp - 687 ] , r15
;  47) t26 = 0
	mov rax, 0
	mov qword  [ rbp - 695 ] , rax
;  48) return t26
	mov r15, [ rbp - 695]
	mov rsp, rbp
	pop rbp
ret
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
;  50) t27 = *p
	mov rbx, [ rbp - 8]
	mov rax, [rbx]
	mov qword  [ rbp - 32 ] , rax
;  51) t = t27
	mov rax, [ rbp - 32]
	mov qword  [ rbp - 24 ] , rax
;  52) t28 = *q
	mov rbx, [ rbp - 16]
	mov rax, [rbx]
	mov qword  [ rbp - 40 ] , rax
;  53) *p = t28
	mov rbx, [ rbp - 40]
	mov r15, [ rbp - 8]
	mov [r15] , rbx
;  54) *q = t
	mov rbx, [ rbp - 24]
	mov r15, [ rbp - 16]
	mov [r15] , rbx
;  55) return
	mov rsp, rbp
	pop rbp
ret
