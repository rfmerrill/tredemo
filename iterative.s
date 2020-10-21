	.file	"iterative.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d"
	.text
	.p2align 4,,15
	.globl	printDown
	.type	printDown, @function
printDown:
.LFB23:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	leaq	.LC0(%rip), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	%edi, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L6:
	subl	$1, %ebx
.L3:
	xorl	%eax, %eax
	movl	%ebx, %edx
	movq	%rbp, %rsi
	movl	$1, %edi
	call	__printf_chk@PLT
	cmpl	$1, %ebx
	jg	.L6
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE23:
	.size	printDown, .-printDown
	.ident	"GCC: (Ubuntu 8.4.0-1ubuntu1~18.04) 8.4.0"
	.section	.note.GNU-stack,"",@progbits
