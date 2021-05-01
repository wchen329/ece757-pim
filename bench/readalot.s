	.file	"readalot.cpp"
	.text
	.globl	pim_activate
	.bss
	.type	pim_activate, @object
	.size	pim_activate, 1
pim_activate:
	.zero	1
	.section	.rodata
.LC0:
	.string	"PIM ACTIVATE ADDRESS: %p\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$16384, %edi
	call	_Znam
	movq	%rax, -16(%rbp)
	movl	$16384, %edi
	call	_Znam
	movq	%rax, -24(%rbp)
	movb	$1, pim_activate(%rip)
	movq	stdout(%rip), %rax
	movl	$pim_activate, %edx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$0, -4(%rbp)
.L3:
	cmpl	$4095, -4(%rbp)
	jg	.L2
	movl	$4095, %eax
	subl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	addl	$1, -4(%rbp)
	jmp	.L3
.L2:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (SUSE Linux) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
