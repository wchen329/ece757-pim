	.file	"testpim.cpp"
	.text
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.align 4
	.type	_ZN9__gnu_cxxL21__default_lock_policyE, @object
	.size	_ZN9__gnu_cxxL21__default_lock_policyE, 4
_ZN9__gnu_cxxL21__default_lock_policyE:
	.long	2
	.type	_ZStL13allocator_arg, @object
	.size	_ZStL13allocator_arg, 1
_ZStL13allocator_arg:
	.zero	1
	.type	_ZStL6ignore, @object
	.size	_ZStL6ignore, 1
_ZStL6ignore:
	.zero	1
.LC0:
	.string	"Trying PIM..."
	.align 8
.LC1:
	.string	"PIM should of been activated by now...\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB3415:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3415
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$13, %edx
	movl	$1, %esi
	movl	$.LC0, %edi
.LEHB0:
	call	fwrite
	movl	$320, %edi
	call	_Znam
.LEHE0:
	movq	%rax, %rdx
	leaq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrIiSt14default_deleteIA_iEEC1IS2_vEEPi
	movl	$320, %edi
.LEHB1:
	call	_Znam
.LEHE1:
	movq	%rax, %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrIiSt14default_deleteIA_iEEC1IS2_vEEPi
	movl	$320, %edi
.LEHB2:
	call	_Znam
.LEHE2:
	movq	%rax, %rdx
	leaq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrIiSt14default_deleteIA_iEEC1IS2_vEEPi
	leaq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt10unique_ptrIiSt14default_deleteIA_iEE3getEv
	movq	%rax, %rdi
	call	_Z16findfirstalignedIPiET_S1_
	movq	%rax, -24(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt10unique_ptrIiSt14default_deleteIA_iEE3getEv
	movq	%rax, %rdi
	call	_Z16findfirstalignedIPiET_S1_
	movq	%rax, -32(%rbp)
	leaq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt10unique_ptrIiSt14default_deleteIA_iEE3getEv
	movq	%rax, %rdi
	call	_Z16findfirstalignedIPiET_S1_
	movq	%rax, -40(%rbp)
	movl	$1, -92(%rbp)
	leaq	-92(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
.LEHB3:
	call	_ZSt6fill_nIPiiiET_S1_T0_RKT1_
	movl	$1, -88(%rbp)
	leaq	-88(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ZSt6fill_nIPiiiET_S1_T0_RKT1_
	movl	$0, -84(%rbp)
	leaq	-84(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ZSt6fill_nIPiiiET_S1_T0_RKT1_
	movabsq	$-562949953421311, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movabsq	$-562949953421310, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movabsq	$-562949953421309, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movabsq	$-562949953421152, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	$1, (%rax)
	movabsq	$-562949953421312, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movb	$1, (%rax)
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$39, %edx
	movl	$1, %esi
	movl	$.LC1, %edi
	call	fwrite
.LEHE3:
	movl	$0, %ebx
	leaq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrIiSt14default_deleteIA_iEED1Ev
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrIiSt14default_deleteIA_iEED1Ev
	leaq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrIiSt14default_deleteIA_iEED1Ev
	movl	%ebx, %eax
	jmp	.L9
.L8:
	movq	%rax, %rbx
	leaq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrIiSt14default_deleteIA_iEED1Ev
	jmp	.L4
.L7:
	movq	%rax, %rbx
.L4:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrIiSt14default_deleteIA_iEED1Ev
	jmp	.L5
.L6:
	movq	%rax, %rbx
.L5:
	leaq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrIiSt14default_deleteIA_iEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB4:
	call	_Unwind_Resume
.LEHE4:
.L9:
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3415:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA3415:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3415-.LLSDACSB3415
.LLSDACSB3415:
	.uleb128 .LEHB0-.LFB3415
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB3415
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L6-.LFB3415
	.uleb128 0
	.uleb128 .LEHB2-.LFB3415
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L7-.LFB3415
	.uleb128 0
	.uleb128 .LEHB3-.LFB3415
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L8-.LFB3415
	.uleb128 0
	.uleb128 .LEHB4-.LFB3415
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE3415:
	.text
	.size	main, .-main
	.section	.text._ZNSt10unique_ptrIiSt14default_deleteIA_iEEC2IS2_vEEPi,"axG",@progbits,_ZNSt10unique_ptrIiSt14default_deleteIA_iEEC5IS2_vEEPi,comdat
	.align 2
	.weak	_ZNSt10unique_ptrIiSt14default_deleteIA_iEEC2IS2_vEEPi
	.type	_ZNSt10unique_ptrIiSt14default_deleteIA_iEEC2IS2_vEEPi, @function
_ZNSt10unique_ptrIiSt14default_deleteIA_iEEC2IS2_vEEPi:
.LFB3661:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3661
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEEC1EPi
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3661:
	.section	.gcc_except_table
.LLSDA3661:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3661-.LLSDACSB3661
.LLSDACSB3661:
.LLSDACSE3661:
	.section	.text._ZNSt10unique_ptrIiSt14default_deleteIA_iEEC2IS2_vEEPi,"axG",@progbits,_ZNSt10unique_ptrIiSt14default_deleteIA_iEEC5IS2_vEEPi,comdat
	.size	_ZNSt10unique_ptrIiSt14default_deleteIA_iEEC2IS2_vEEPi, .-_ZNSt10unique_ptrIiSt14default_deleteIA_iEEC2IS2_vEEPi
	.weak	_ZNSt10unique_ptrIiSt14default_deleteIA_iEEC1IS2_vEEPi
	.set	_ZNSt10unique_ptrIiSt14default_deleteIA_iEEC1IS2_vEEPi,_ZNSt10unique_ptrIiSt14default_deleteIA_iEEC2IS2_vEEPi
	.section	.text._ZNSt10unique_ptrIiSt14default_deleteIA_iEED2Ev,"axG",@progbits,_ZNSt10unique_ptrIiSt14default_deleteIA_iEED5Ev,comdat
	.align 2
	.weak	_ZNSt10unique_ptrIiSt14default_deleteIA_iEED2Ev
	.type	_ZNSt10unique_ptrIiSt14default_deleteIA_iEED2Ev, @function
_ZNSt10unique_ptrIiSt14default_deleteIA_iEED2Ev:
.LFB3664:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEE6_M_ptrEv
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L12
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrIiSt14default_deleteIA_iEE11get_deleterEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS0_E5valueEvE4typeEPS5_
.L12:
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3664:
	.size	_ZNSt10unique_ptrIiSt14default_deleteIA_iEED2Ev, .-_ZNSt10unique_ptrIiSt14default_deleteIA_iEED2Ev
	.weak	_ZNSt10unique_ptrIiSt14default_deleteIA_iEED1Ev
	.set	_ZNSt10unique_ptrIiSt14default_deleteIA_iEED1Ev,_ZNSt10unique_ptrIiSt14default_deleteIA_iEED2Ev
	.section	.text._ZNKSt10unique_ptrIiSt14default_deleteIA_iEE3getEv,"axG",@progbits,_ZNKSt10unique_ptrIiSt14default_deleteIA_iEE3getEv,comdat
	.align 2
	.weak	_ZNKSt10unique_ptrIiSt14default_deleteIA_iEE3getEv
	.type	_ZNKSt10unique_ptrIiSt14default_deleteIA_iEE3getEv, @function
_ZNKSt10unique_ptrIiSt14default_deleteIA_iEE3getEv:
.LFB3666:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt15__uniq_ptr_implIiSt14default_deleteIA_iEE6_M_ptrEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3666:
	.size	_ZNKSt10unique_ptrIiSt14default_deleteIA_iEE3getEv, .-_ZNKSt10unique_ptrIiSt14default_deleteIA_iEE3getEv
	.section	.text._Z16findfirstalignedIPiET_S1_,"axG",@progbits,_Z16findfirstalignedIPiET_S1_,comdat
	.weak	_Z16findfirstalignedIPiET_S1_
	.type	_Z16findfirstalignedIPiET_S1_, @function
_Z16findfirstalignedIPiET_S1_:
.LFB3667:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.L17:
	movq	-8(%rbp), %rax
	andl	$63, %eax
	testq	%rax, %rax
	je	.L16
	addq	$4, -8(%rbp)
	jmp	.L17
.L16:
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3667:
	.size	_Z16findfirstalignedIPiET_S1_, .-_Z16findfirstalignedIPiET_S1_
	.section	.text._ZSt6fill_nIPiiiET_S1_T0_RKT1_,"axG",@progbits,_ZSt6fill_nIPiiiET_S1_T0_RKT1_,comdat
	.weak	_ZSt6fill_nIPiiiET_S1_T0_RKT1_
	.type	_ZSt6fill_nIPiiiET_S1_T0_RKT1_, @function
_ZSt6fill_nIPiiiET_S1_T0_RKT1_:
.LFB3668:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPiET_S1_
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	_ZSt10__fill_n_aIPiiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3668:
	.size	_ZSt6fill_nIPiiiET_S1_T0_RKT1_, .-_ZSt6fill_nIPiiiET_S1_T0_RKT1_
	.section	.text._ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEEC2EPi,"axG",@progbits,_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEEC5EPi,comdat
	.align 2
	.weak	_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEEC2EPi
	.type	_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEEC2EPi, @function
_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEEC2EPi:
.LFB3785:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt5tupleIJPiSt14default_deleteIA_iEEEC1IS0_S3_Lb1EEEv
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEE6_M_ptrEv
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, (%rdx)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3785:
	.size	_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEEC2EPi, .-_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEEC2EPi
	.weak	_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEEC1EPi
	.set	_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEEC1EPi,_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEEC2EPi
	.section	.text._ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEE6_M_ptrEv,"axG",@progbits,_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEE6_M_ptrEv,comdat
	.align 2
	.weak	_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEE6_M_ptrEv
	.type	_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEE6_M_ptrEv, @function
_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEE6_M_ptrEv:
.LFB3787:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm0EJPiSt14default_deleteIA_iEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3787:
	.size	_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEE6_M_ptrEv, .-_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEE6_M_ptrEv
	.section	.text._ZNSt10unique_ptrIiSt14default_deleteIA_iEE11get_deleterEv,"axG",@progbits,_ZNSt10unique_ptrIiSt14default_deleteIA_iEE11get_deleterEv,comdat
	.align 2
	.weak	_ZNSt10unique_ptrIiSt14default_deleteIA_iEE11get_deleterEv
	.type	_ZNSt10unique_ptrIiSt14default_deleteIA_iEE11get_deleterEv, @function
_ZNSt10unique_ptrIiSt14default_deleteIA_iEE11get_deleterEv:
.LFB3788:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEE10_M_deleterEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3788:
	.size	_ZNSt10unique_ptrIiSt14default_deleteIA_iEE11get_deleterEv, .-_ZNSt10unique_ptrIiSt14default_deleteIA_iEE11get_deleterEv
	.section	.text._ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS0_E5valueEvE4typeEPS5_,"axG",@progbits,_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS0_E5valueEvE4typeEPS5_,comdat
	.align 2
	.weak	_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS0_E5valueEvE4typeEPS5_
	.type	_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS0_E5valueEvE4typeEPS5_, @function
_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS0_E5valueEvE4typeEPS5_:
.LFB3789:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L28
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L28:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3789:
	.size	_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS0_E5valueEvE4typeEPS5_, .-_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS0_E5valueEvE4typeEPS5_
	.section	.text._ZNKSt15__uniq_ptr_implIiSt14default_deleteIA_iEE6_M_ptrEv,"axG",@progbits,_ZNKSt15__uniq_ptr_implIiSt14default_deleteIA_iEE6_M_ptrEv,comdat
	.align 2
	.weak	_ZNKSt15__uniq_ptr_implIiSt14default_deleteIA_iEE6_M_ptrEv
	.type	_ZNKSt15__uniq_ptr_implIiSt14default_deleteIA_iEE6_M_ptrEv, @function
_ZNKSt15__uniq_ptr_implIiSt14default_deleteIA_iEE6_M_ptrEv:
.LFB3790:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm0EJPiSt14default_deleteIA_iEEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS8_
	movq	(%rax), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3790:
	.size	_ZNKSt15__uniq_ptr_implIiSt14default_deleteIA_iEE6_M_ptrEv, .-_ZNKSt15__uniq_ptr_implIiSt14default_deleteIA_iEE6_M_ptrEv
	.section	.text._ZSt12__niter_baseIPiET_S1_,"axG",@progbits,_ZSt12__niter_baseIPiET_S1_,comdat
	.weak	_ZSt12__niter_baseIPiET_S1_
	.type	_ZSt12__niter_baseIPiET_S1_, @function
_ZSt12__niter_baseIPiET_S1_:
.LFB3791:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3791:
	.size	_ZSt12__niter_baseIPiET_S1_, .-_ZSt12__niter_baseIPiET_S1_
	.section	.text._ZSt10__fill_n_aIPiiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_,"axG",@progbits,_ZSt10__fill_n_aIPiiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_,comdat
	.weak	_ZSt10__fill_n_aIPiiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_
	.type	_ZSt10__fill_n_aIPiiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_, @function
_ZSt10__fill_n_aIPiiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_:
.LFB3792:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
.L35:
	cmpl	$0, -4(%rbp)
	jle	.L34
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, (%rax)
	subl	$1, -4(%rbp)
	addq	$4, -24(%rbp)
	jmp	.L35
.L34:
	movq	-24(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3792:
	.size	_ZSt10__fill_n_aIPiiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_, .-_ZSt10__fill_n_aIPiiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_
	.section	.text._ZNSt5tupleIJPiSt14default_deleteIA_iEEEC2IS0_S3_Lb1EEEv,"axG",@progbits,_ZNSt5tupleIJPiSt14default_deleteIA_iEEEC5IS0_S3_Lb1EEEv,comdat
	.align 2
	.weak	_ZNSt5tupleIJPiSt14default_deleteIA_iEEEC2IS0_S3_Lb1EEEv
	.type	_ZNSt5tupleIJPiSt14default_deleteIA_iEEEC2IS0_S3_Lb1EEEv, @function
_ZNSt5tupleIJPiSt14default_deleteIA_iEEEC2IS0_S3_Lb1EEEv:
.LFB3832:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm0EJPiSt14default_deleteIA_iEEEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3832:
	.size	_ZNSt5tupleIJPiSt14default_deleteIA_iEEEC2IS0_S3_Lb1EEEv, .-_ZNSt5tupleIJPiSt14default_deleteIA_iEEEC2IS0_S3_Lb1EEEv
	.weak	_ZNSt5tupleIJPiSt14default_deleteIA_iEEEC1IS0_S3_Lb1EEEv
	.set	_ZNSt5tupleIJPiSt14default_deleteIA_iEEEC1IS0_S3_Lb1EEEv,_ZNSt5tupleIJPiSt14default_deleteIA_iEEEC2IS0_S3_Lb1EEEv
	.section	.text._ZSt3getILm0EJPiSt14default_deleteIA_iEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_,"axG",@progbits,_ZSt3getILm0EJPiSt14default_deleteIA_iEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_,comdat
	.weak	_ZSt3getILm0EJPiSt14default_deleteIA_iEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_
	.type	_ZSt3getILm0EJPiSt14default_deleteIA_iEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_, @function
_ZSt3getILm0EJPiSt14default_deleteIA_iEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_:
.LFB3834:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__get_helperILm0EPiJSt14default_deleteIA_iEEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3834:
	.size	_ZSt3getILm0EJPiSt14default_deleteIA_iEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_, .-_ZSt3getILm0EJPiSt14default_deleteIA_iEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_
	.section	.text._ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEE10_M_deleterEv,"axG",@progbits,_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEE10_M_deleterEv,comdat
	.align 2
	.weak	_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEE10_M_deleterEv
	.type	_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEE10_M_deleterEv, @function
_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEE10_M_deleterEv:
.LFB3835:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm1EJPiSt14default_deleteIA_iEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3835:
	.size	_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEE10_M_deleterEv, .-_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEE10_M_deleterEv
	.section	.text._ZSt3getILm0EJPiSt14default_deleteIA_iEEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS8_,"axG",@progbits,_ZSt3getILm0EJPiSt14default_deleteIA_iEEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS8_,comdat
	.weak	_ZSt3getILm0EJPiSt14default_deleteIA_iEEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS8_
	.type	_ZSt3getILm0EJPiSt14default_deleteIA_iEEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS8_, @function
_ZSt3getILm0EJPiSt14default_deleteIA_iEEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS8_:
.LFB3836:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__get_helperILm0EPiJSt14default_deleteIA_iEEERKT0_RKSt11_Tuple_implIXT_EJS4_DpT1_EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3836:
	.size	_ZSt3getILm0EJPiSt14default_deleteIA_iEEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS8_, .-_ZSt3getILm0EJPiSt14default_deleteIA_iEEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS8_
	.section	.text._ZNSt11_Tuple_implILm0EJPiSt14default_deleteIA_iEEEC2Ev,"axG",@progbits,_ZNSt11_Tuple_implILm0EJPiSt14default_deleteIA_iEEEC5Ev,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm0EJPiSt14default_deleteIA_iEEEC2Ev
	.type	_ZNSt11_Tuple_implILm0EJPiSt14default_deleteIA_iEEEC2Ev, @function
_ZNSt11_Tuple_implILm0EJPiSt14default_deleteIA_iEEEC2Ev:
.LFB3876:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm1EJSt14default_deleteIA_iEEEC2Ev
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm0EPiLb0EEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3876:
	.size	_ZNSt11_Tuple_implILm0EJPiSt14default_deleteIA_iEEEC2Ev, .-_ZNSt11_Tuple_implILm0EJPiSt14default_deleteIA_iEEEC2Ev
	.weak	_ZNSt11_Tuple_implILm0EJPiSt14default_deleteIA_iEEEC1Ev
	.set	_ZNSt11_Tuple_implILm0EJPiSt14default_deleteIA_iEEEC1Ev,_ZNSt11_Tuple_implILm0EJPiSt14default_deleteIA_iEEEC2Ev
	.section	.text._ZSt12__get_helperILm0EPiJSt14default_deleteIA_iEEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm0EPiJSt14default_deleteIA_iEEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm0EPiJSt14default_deleteIA_iEEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE
	.type	_ZSt12__get_helperILm0EPiJSt14default_deleteIA_iEEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE, @function
_ZSt12__get_helperILm0EPiJSt14default_deleteIA_iEEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE:
.LFB3878:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm0EJPiSt14default_deleteIA_iEEE7_M_headERS4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3878:
	.size	_ZSt12__get_helperILm0EPiJSt14default_deleteIA_iEEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE, .-_ZSt12__get_helperILm0EPiJSt14default_deleteIA_iEEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE
	.section	.text._ZSt3getILm1EJPiSt14default_deleteIA_iEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_,"axG",@progbits,_ZSt3getILm1EJPiSt14default_deleteIA_iEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_,comdat
	.weak	_ZSt3getILm1EJPiSt14default_deleteIA_iEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_
	.type	_ZSt3getILm1EJPiSt14default_deleteIA_iEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_, @function
_ZSt3getILm1EJPiSt14default_deleteIA_iEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_:
.LFB3879:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__get_helperILm1ESt14default_deleteIA_iEJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3879:
	.size	_ZSt3getILm1EJPiSt14default_deleteIA_iEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_, .-_ZSt3getILm1EJPiSt14default_deleteIA_iEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_
	.section	.text._ZSt12__get_helperILm0EPiJSt14default_deleteIA_iEEERKT0_RKSt11_Tuple_implIXT_EJS4_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm0EPiJSt14default_deleteIA_iEEERKT0_RKSt11_Tuple_implIXT_EJS4_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm0EPiJSt14default_deleteIA_iEEERKT0_RKSt11_Tuple_implIXT_EJS4_DpT1_EE
	.type	_ZSt12__get_helperILm0EPiJSt14default_deleteIA_iEEERKT0_RKSt11_Tuple_implIXT_EJS4_DpT1_EE, @function
_ZSt12__get_helperILm0EPiJSt14default_deleteIA_iEEERKT0_RKSt11_Tuple_implIXT_EJS4_DpT1_EE:
.LFB3880:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm0EJPiSt14default_deleteIA_iEEE7_M_headERKS4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3880:
	.size	_ZSt12__get_helperILm0EPiJSt14default_deleteIA_iEEERKT0_RKSt11_Tuple_implIXT_EJS4_DpT1_EE, .-_ZSt12__get_helperILm0EPiJSt14default_deleteIA_iEEERKT0_RKSt11_Tuple_implIXT_EJS4_DpT1_EE
	.section	.text._ZNSt11_Tuple_implILm1EJSt14default_deleteIA_iEEEC2Ev,"axG",@progbits,_ZNSt11_Tuple_implILm1EJSt14default_deleteIA_iEEEC5Ev,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm1EJSt14default_deleteIA_iEEEC2Ev
	.type	_ZNSt11_Tuple_implILm1EJSt14default_deleteIA_iEEEC2Ev, @function
_ZNSt11_Tuple_implILm1EJSt14default_deleteIA_iEEEC2Ev:
.LFB3914:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm1ESt14default_deleteIA_iELb1EEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3914:
	.size	_ZNSt11_Tuple_implILm1EJSt14default_deleteIA_iEEEC2Ev, .-_ZNSt11_Tuple_implILm1EJSt14default_deleteIA_iEEEC2Ev
	.weak	_ZNSt11_Tuple_implILm1EJSt14default_deleteIA_iEEEC1Ev
	.set	_ZNSt11_Tuple_implILm1EJSt14default_deleteIA_iEEEC1Ev,_ZNSt11_Tuple_implILm1EJSt14default_deleteIA_iEEEC2Ev
	.section	.text._ZNSt10_Head_baseILm0EPiLb0EEC2Ev,"axG",@progbits,_ZNSt10_Head_baseILm0EPiLb0EEC5Ev,comdat
	.align 2
	.weak	_ZNSt10_Head_baseILm0EPiLb0EEC2Ev
	.type	_ZNSt10_Head_baseILm0EPiLb0EEC2Ev, @function
_ZNSt10_Head_baseILm0EPiLb0EEC2Ev:
.LFB3917:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3917:
	.size	_ZNSt10_Head_baseILm0EPiLb0EEC2Ev, .-_ZNSt10_Head_baseILm0EPiLb0EEC2Ev
	.weak	_ZNSt10_Head_baseILm0EPiLb0EEC1Ev
	.set	_ZNSt10_Head_baseILm0EPiLb0EEC1Ev,_ZNSt10_Head_baseILm0EPiLb0EEC2Ev
	.section	.text._ZNSt11_Tuple_implILm0EJPiSt14default_deleteIA_iEEE7_M_headERS4_,"axG",@progbits,_ZNSt11_Tuple_implILm0EJPiSt14default_deleteIA_iEEE7_M_headERS4_,comdat
	.weak	_ZNSt11_Tuple_implILm0EJPiSt14default_deleteIA_iEEE7_M_headERS4_
	.type	_ZNSt11_Tuple_implILm0EJPiSt14default_deleteIA_iEEE7_M_headERS4_, @function
_ZNSt11_Tuple_implILm0EJPiSt14default_deleteIA_iEEE7_M_headERS4_:
.LFB3919:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm0EPiLb0EE7_M_headERS1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3919:
	.size	_ZNSt11_Tuple_implILm0EJPiSt14default_deleteIA_iEEE7_M_headERS4_, .-_ZNSt11_Tuple_implILm0EJPiSt14default_deleteIA_iEEE7_M_headERS4_
	.section	.text._ZSt12__get_helperILm1ESt14default_deleteIA_iEJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm1ESt14default_deleteIA_iEJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm1ESt14default_deleteIA_iEJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE
	.type	_ZSt12__get_helperILm1ESt14default_deleteIA_iEJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE, @function
_ZSt12__get_helperILm1ESt14default_deleteIA_iEJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE:
.LFB3920:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm1EJSt14default_deleteIA_iEEE7_M_headERS3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3920:
	.size	_ZSt12__get_helperILm1ESt14default_deleteIA_iEJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE, .-_ZSt12__get_helperILm1ESt14default_deleteIA_iEJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE
	.section	.text._ZNSt11_Tuple_implILm0EJPiSt14default_deleteIA_iEEE7_M_headERKS4_,"axG",@progbits,_ZNSt11_Tuple_implILm0EJPiSt14default_deleteIA_iEEE7_M_headERKS4_,comdat
	.weak	_ZNSt11_Tuple_implILm0EJPiSt14default_deleteIA_iEEE7_M_headERKS4_
	.type	_ZNSt11_Tuple_implILm0EJPiSt14default_deleteIA_iEEE7_M_headERKS4_, @function
_ZNSt11_Tuple_implILm0EJPiSt14default_deleteIA_iEEE7_M_headERKS4_:
.LFB3921:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm0EPiLb0EE7_M_headERKS1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3921:
	.size	_ZNSt11_Tuple_implILm0EJPiSt14default_deleteIA_iEEE7_M_headERKS4_, .-_ZNSt11_Tuple_implILm0EJPiSt14default_deleteIA_iEEE7_M_headERKS4_
	.section	.text._ZNSt10_Head_baseILm1ESt14default_deleteIA_iELb1EEC2Ev,"axG",@progbits,_ZNSt10_Head_baseILm1ESt14default_deleteIA_iELb1EEC5Ev,comdat
	.align 2
	.weak	_ZNSt10_Head_baseILm1ESt14default_deleteIA_iELb1EEC2Ev
	.type	_ZNSt10_Head_baseILm1ESt14default_deleteIA_iELb1EEC2Ev, @function
_ZNSt10_Head_baseILm1ESt14default_deleteIA_iELb1EEC2Ev:
.LFB3949:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3949:
	.size	_ZNSt10_Head_baseILm1ESt14default_deleteIA_iELb1EEC2Ev, .-_ZNSt10_Head_baseILm1ESt14default_deleteIA_iELb1EEC2Ev
	.weak	_ZNSt10_Head_baseILm1ESt14default_deleteIA_iELb1EEC1Ev
	.set	_ZNSt10_Head_baseILm1ESt14default_deleteIA_iELb1EEC1Ev,_ZNSt10_Head_baseILm1ESt14default_deleteIA_iELb1EEC2Ev
	.section	.text._ZNSt10_Head_baseILm0EPiLb0EE7_M_headERS1_,"axG",@progbits,_ZNSt10_Head_baseILm0EPiLb0EE7_M_headERS1_,comdat
	.weak	_ZNSt10_Head_baseILm0EPiLb0EE7_M_headERS1_
	.type	_ZNSt10_Head_baseILm0EPiLb0EE7_M_headERS1_, @function
_ZNSt10_Head_baseILm0EPiLb0EE7_M_headERS1_:
.LFB3951:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3951:
	.size	_ZNSt10_Head_baseILm0EPiLb0EE7_M_headERS1_, .-_ZNSt10_Head_baseILm0EPiLb0EE7_M_headERS1_
	.section	.text._ZNSt11_Tuple_implILm1EJSt14default_deleteIA_iEEE7_M_headERS3_,"axG",@progbits,_ZNSt11_Tuple_implILm1EJSt14default_deleteIA_iEEE7_M_headERS3_,comdat
	.weak	_ZNSt11_Tuple_implILm1EJSt14default_deleteIA_iEEE7_M_headERS3_
	.type	_ZNSt11_Tuple_implILm1EJSt14default_deleteIA_iEEE7_M_headERS3_, @function
_ZNSt11_Tuple_implILm1EJSt14default_deleteIA_iEEE7_M_headERS3_:
.LFB3952:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm1ESt14default_deleteIA_iELb1EE7_M_headERS3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3952:
	.size	_ZNSt11_Tuple_implILm1EJSt14default_deleteIA_iEEE7_M_headERS3_, .-_ZNSt11_Tuple_implILm1EJSt14default_deleteIA_iEEE7_M_headERS3_
	.section	.text._ZNSt10_Head_baseILm0EPiLb0EE7_M_headERKS1_,"axG",@progbits,_ZNSt10_Head_baseILm0EPiLb0EE7_M_headERKS1_,comdat
	.weak	_ZNSt10_Head_baseILm0EPiLb0EE7_M_headERKS1_
	.type	_ZNSt10_Head_baseILm0EPiLb0EE7_M_headERKS1_, @function
_ZNSt10_Head_baseILm0EPiLb0EE7_M_headERKS1_:
.LFB3953:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3953:
	.size	_ZNSt10_Head_baseILm0EPiLb0EE7_M_headERKS1_, .-_ZNSt10_Head_baseILm0EPiLb0EE7_M_headERKS1_
	.section	.text._ZNSt10_Head_baseILm1ESt14default_deleteIA_iELb1EE7_M_headERS3_,"axG",@progbits,_ZNSt10_Head_baseILm1ESt14default_deleteIA_iELb1EE7_M_headERS3_,comdat
	.weak	_ZNSt10_Head_baseILm1ESt14default_deleteIA_iELb1EE7_M_headERS3_
	.type	_ZNSt10_Head_baseILm1ESt14default_deleteIA_iELb1EE7_M_headERS3_, @function
_ZNSt10_Head_baseILm1ESt14default_deleteIA_iELb1EE7_M_headERS3_:
.LFB3964:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3964:
	.size	_ZNSt10_Head_baseILm1ESt14default_deleteIA_iELb1EE7_M_headERS3_, .-_ZNSt10_Head_baseILm1ESt14default_deleteIA_iELb1EE7_M_headERS3_
	.ident	"GCC: (SUSE Linux) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
