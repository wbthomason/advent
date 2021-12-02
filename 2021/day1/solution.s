	.text
	.file	"solution.cc"
	.globl	_Z7solve_1RKSt6vectorIiSaIiEE   # -- Begin function _Z7solve_1RKSt6vectorIiSaIiEE
	.p2align	4, 0x90
	.type	_Z7solve_1RKSt6vectorIiSaIiEE,@function
_Z7solve_1RKSt6vectorIiSaIiEE:          # @_Z7solve_1RKSt6vectorIiSaIiEE
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %r11
	movq	8(%rdi), %r10
	subq	%r11, %r10
	sarq	$2, %r10
	xorl	%eax, %eax
	cmpq	$2, %r10
	jb	.LBB0_12
# %bb.1:
	movl	(%r11), %edx
	leaq	-1(%r10), %r8
	cmpq	$32, %r8
	jae	.LBB0_3
# %bb.2:
	xorl	%eax, %eax
	movl	$1, %esi
	jmp	.LBB0_11
.LBB0_3:
	movq	%r8, %rsi
	andq	$-32, %rsi
	vpbroadcastd	%edx, %ymm0
	leaq	-32(%rsi), %rax
	movq	%rax, %r9
	shrq	$5, %r9
	incq	%r9
	testq	%rax, %rax
	je	.LBB0_4
# %bb.5:
	movq	%r9, %rax
	andq	$-2, %rax
	negq	%rax
	vpxor	%xmm1, %xmm1, %xmm1
	movl	$1, %edi
	vpxor	%xmm2, %xmm2, %xmm2
	vpxor	%xmm3, %xmm3, %xmm3
	vpxor	%xmm4, %xmm4, %xmm4
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	vmovdqu	(%r11,%rdi,4), %ymm5
	vmovdqu	32(%r11,%rdi,4), %ymm6
	vmovdqu	64(%r11,%rdi,4), %ymm7
	vmovdqu	96(%r11,%rdi,4), %ymm8
	valignd	$7, %ymm0, %ymm5, %ymm0         # ymm0 = ymm0[7],ymm5[0,1,2,3,4,5,6]
	valignd	$7, %ymm5, %ymm6, %ymm9         # ymm9 = ymm5[7],ymm6[0,1,2,3,4,5,6]
	valignd	$7, %ymm6, %ymm7, %ymm10        # ymm10 = ymm6[7],ymm7[0,1,2,3,4,5,6]
	valignd	$7, %ymm7, %ymm8, %ymm11        # ymm11 = ymm7[7],ymm8[0,1,2,3,4,5,6]
	vpcmpgtd	%ymm0, %ymm5, %ymm0
	vpsubd	%ymm0, %ymm1, %ymm1
	vpcmpgtd	%ymm9, %ymm6, %ymm0
	vpsubd	%ymm0, %ymm2, %ymm2
	vpcmpgtd	%ymm10, %ymm7, %ymm0
	vpsubd	%ymm0, %ymm3, %ymm3
	vpcmpgtd	%ymm11, %ymm8, %ymm0
	vpsubd	%ymm0, %ymm4, %ymm4
	vmovdqu	128(%r11,%rdi,4), %ymm5
	vmovdqu	160(%r11,%rdi,4), %ymm6
	vmovdqu	192(%r11,%rdi,4), %ymm7
	vmovdqu	224(%r11,%rdi,4), %ymm0
	valignd	$7, %ymm8, %ymm5, %ymm8         # ymm8 = ymm8[7],ymm5[0,1,2,3,4,5,6]
	valignd	$7, %ymm5, %ymm6, %ymm9         # ymm9 = ymm5[7],ymm6[0,1,2,3,4,5,6]
	valignd	$7, %ymm6, %ymm7, %ymm10        # ymm10 = ymm6[7],ymm7[0,1,2,3,4,5,6]
	valignd	$7, %ymm7, %ymm0, %ymm11        # ymm11 = ymm7[7],ymm0[0,1,2,3,4,5,6]
	vpcmpgtd	%ymm8, %ymm5, %ymm5
	vpsubd	%ymm5, %ymm1, %ymm1
	vpcmpgtd	%ymm9, %ymm6, %ymm5
	vpsubd	%ymm5, %ymm2, %ymm2
	vpcmpgtd	%ymm10, %ymm7, %ymm5
	vpsubd	%ymm5, %ymm3, %ymm3
	vpcmpgtd	%ymm11, %ymm0, %ymm5
	vpsubd	%ymm5, %ymm4, %ymm4
	addq	$64, %rdi
	addq	$2, %rax
	jne	.LBB0_6
# %bb.7:
	testb	$1, %r9b
	je	.LBB0_9
.LBB0_8:
	vmovdqu	(%r11,%rdi,4), %ymm5
	vmovdqu	32(%r11,%rdi,4), %ymm6
	vmovdqu	64(%r11,%rdi,4), %ymm7
	vmovdqu	96(%r11,%rdi,4), %ymm8
	valignd	$7, %ymm0, %ymm5, %ymm0         # ymm0 = ymm0[7],ymm5[0,1,2,3,4,5,6]
	valignd	$7, %ymm7, %ymm8, %ymm9         # ymm9 = ymm7[7],ymm8[0,1,2,3,4,5,6]
	vpcmpgtd	%ymm9, %ymm8, %ymm9
	vpsubd	%ymm9, %ymm4, %ymm4
	valignd	$7, %ymm6, %ymm7, %ymm9         # ymm9 = ymm6[7],ymm7[0,1,2,3,4,5,6]
	vpcmpgtd	%ymm9, %ymm7, %ymm7
	vpsubd	%ymm7, %ymm3, %ymm3
	valignd	$7, %ymm5, %ymm6, %ymm7         # ymm7 = ymm5[7],ymm6[0,1,2,3,4,5,6]
	vpcmpgtd	%ymm7, %ymm6, %ymm6
	vpsubd	%ymm6, %ymm2, %ymm2
	vpcmpgtd	%ymm0, %ymm5, %ymm0
	vpsubd	%ymm0, %ymm1, %ymm1
	vmovdqa	%ymm8, %ymm0
.LBB0_9:
	vpaddd	%ymm4, %ymm2, %ymm2
	vpaddd	%ymm3, %ymm1, %ymm1
	vpaddd	%ymm2, %ymm1, %ymm1
	vextracti128	$1, %ymm1, %xmm2
	vpaddd	%xmm2, %xmm1, %xmm1
	vpshufd	$238, %xmm1, %xmm2              # xmm2 = xmm1[2,3,2,3]
	vpaddd	%xmm2, %xmm1, %xmm1
	vpshufd	$85, %xmm1, %xmm2               # xmm2 = xmm1[1,1,1,1]
	vpaddd	%xmm2, %xmm1, %xmm1
	vmovd	%xmm1, %eax
	cmpq	%rsi, %r8
	je	.LBB0_12
# %bb.10:
	orq	$1, %rsi
	vextracti128	$1, %ymm0, %xmm0
	vpextrd	$3, %xmm0, %edx
	.p2align	4, 0x90
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	movl	(%r11,%rsi,4), %edi
	xorl	%ecx, %ecx
	cmpl	%edx, %edi
	setg	%cl
	addl	%ecx, %eax
	incq	%rsi
	movl	%edi, %edx
	cmpq	%rsi, %r10
	jne	.LBB0_11
.LBB0_12:
	vzeroupper
	retq
.LBB0_4:
	vpxor	%xmm1, %xmm1, %xmm1
	movl	$1, %edi
	vpxor	%xmm2, %xmm2, %xmm2
	vpxor	%xmm3, %xmm3, %xmm3
	vpxor	%xmm4, %xmm4, %xmm4
	testb	$1, %r9b
	jne	.LBB0_8
	jmp	.LBB0_9
.Lfunc_end0:
	.size	_Z7solve_1RKSt6vectorIiSaIiEE, .Lfunc_end0-_Z7solve_1RKSt6vectorIiSaIiEE
	.cfi_endproc
                                        # -- End function
	.globl	_Z7solve_2RKSt6vectorIiSaIiEE   # -- Begin function _Z7solve_2RKSt6vectorIiSaIiEE
	.p2align	4, 0x90
	.type	_Z7solve_2RKSt6vectorIiSaIiEE,@function
_Z7solve_2RKSt6vectorIiSaIiEE:          # @_Z7solve_2RKSt6vectorIiSaIiEE
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %rcx
	movq	8(%rdi), %r10
	subq	%rcx, %r10
	sarq	$2, %r10
	xorl	%eax, %eax
	cmpq	$4, %r10
	jb	.LBB1_12
# %bb.1:
	leaq	-3(%r10), %r8
	cmpq	$32, %r8
	jae	.LBB1_3
# %bb.2:
	xorl	%eax, %eax
	movl	$3, %esi
	jmp	.LBB1_11
.LBB1_3:
	movq	%r8, %rsi
	andq	$-32, %rsi
	leaq	-32(%rsi), %rax
	movq	%rax, %r9
	shrq	$5, %r9
	incq	%r9
	testq	%rax, %rax
	je	.LBB1_4
# %bb.5:
	movq	%r9, %rdi
	andq	$-2, %rdi
	negq	%rdi
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%eax, %eax
	vpxor	%xmm2, %xmm2, %xmm2
	vpxor	%xmm1, %xmm1, %xmm1
	vpxor	%xmm3, %xmm3, %xmm3
	.p2align	4, 0x90
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	vmovdqu	12(%rcx,%rax,4), %ymm4
	vmovdqu	44(%rcx,%rax,4), %ymm5
	vmovdqu	76(%rcx,%rax,4), %ymm6
	vmovdqu	108(%rcx,%rax,4), %ymm7
	vpcmpgtd	(%rcx,%rax,4), %ymm4, %ymm4
	vpcmpgtd	32(%rcx,%rax,4), %ymm5, %ymm5
	vpsubd	%ymm4, %ymm0, %ymm0
	vpsubd	%ymm5, %ymm2, %ymm2
	vpcmpgtd	64(%rcx,%rax,4), %ymm6, %ymm4
	vpcmpgtd	96(%rcx,%rax,4), %ymm7, %ymm5
	vpsubd	%ymm4, %ymm1, %ymm1
	vpsubd	%ymm5, %ymm3, %ymm3
	vmovdqu	140(%rcx,%rax,4), %ymm4
	vmovdqu	172(%rcx,%rax,4), %ymm5
	vmovdqu	204(%rcx,%rax,4), %ymm6
	vmovdqu	236(%rcx,%rax,4), %ymm7
	vpcmpgtd	128(%rcx,%rax,4), %ymm4, %ymm4
	vpsubd	%ymm4, %ymm0, %ymm0
	vpcmpgtd	160(%rcx,%rax,4), %ymm5, %ymm4
	vpsubd	%ymm4, %ymm2, %ymm2
	vpcmpgtd	192(%rcx,%rax,4), %ymm6, %ymm4
	vpsubd	%ymm4, %ymm1, %ymm1
	vpcmpgtd	224(%rcx,%rax,4), %ymm7, %ymm4
	vpsubd	%ymm4, %ymm3, %ymm3
	addq	$64, %rax
	addq	$2, %rdi
	jne	.LBB1_6
# %bb.7:
	testb	$1, %r9b
	je	.LBB1_9
.LBB1_8:
	leaq	(,%rax,4), %rdi
	orq	$12, %rdi
	vmovdqu	(%rcx,%rdi), %ymm4
	vmovdqu	32(%rcx,%rdi), %ymm5
	vmovdqu	64(%rcx,%rdi), %ymm6
	vmovdqu	96(%rcx,%rdi), %ymm7
	vpcmpgtd	96(%rcx,%rax,4), %ymm7, %ymm7
	vpsubd	%ymm7, %ymm3, %ymm3
	vpcmpgtd	64(%rcx,%rax,4), %ymm6, %ymm6
	vpsubd	%ymm6, %ymm1, %ymm1
	vpcmpgtd	32(%rcx,%rax,4), %ymm5, %ymm5
	vpsubd	%ymm5, %ymm2, %ymm2
	vpcmpgtd	(%rcx,%rax,4), %ymm4, %ymm4
	vpsubd	%ymm4, %ymm0, %ymm0
.LBB1_9:
	vpaddd	%ymm3, %ymm2, %ymm2
	vpaddd	%ymm1, %ymm0, %ymm0
	vpaddd	%ymm2, %ymm0, %ymm0
	vextracti128	$1, %ymm0, %xmm1
	vpaddd	%xmm1, %xmm0, %xmm0
	vpshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	vpaddd	%xmm1, %xmm0, %xmm0
	vpshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	vpaddd	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, %eax
	cmpq	%rsi, %r8
	je	.LBB1_12
# %bb.10:
	orq	$3, %rsi
	.p2align	4, 0x90
.LBB1_11:                               # =>This Inner Loop Header: Depth=1
	movl	(%rcx,%rsi,4), %edi
	xorl	%edx, %edx
	cmpl	-12(%rcx,%rsi,4), %edi
	setg	%dl
	addl	%edx, %eax
	incq	%rsi
	cmpq	%rsi, %r10
	jne	.LBB1_11
.LBB1_12:
	vzeroupper
	retq
.LBB1_4:
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%eax, %eax
	vpxor	%xmm2, %xmm2, %xmm2
	vpxor	%xmm1, %xmm1, %xmm1
	vpxor	%xmm3, %xmm3, %xmm3
	testb	$1, %r9b
	jne	.LBB1_8
	jmp	.LBB1_9
.Lfunc_end1:
	.size	_Z7solve_2RKSt6vectorIiSaIiEE, .Lfunc_end1-_Z7solve_2RKSt6vectorIiSaIiEE
	.cfi_endproc
                                        # -- End function
	.globl	_Z10load_inputRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE # -- Begin function _Z10load_inputRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	4, 0x90
	.type	_Z10load_inputRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_Z10load_inputRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # @_Z10load_inputRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$584, %rsp                      # imm = 0x248
	.cfi_def_cfa_offset 640
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%fs:40, %rax
	movq	%rax, 576(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rdi)
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	movq	$0, 16(%rdi)
	leaq	56(%rsp), %rbx
	movq	%rbx, %rdi
	movl	$8, %edx
	callq	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode@PLT
	leaq	40(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, 40(%rsp)
	movq	56(%rsp), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%rbx), %rbp
	testq	%rbp, %rbp
	je	.LBB2_35
# %bb.1:
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
	jmp	.LBB2_4
	.p2align	4, 0x90
.LBB2_15:                               #   in Loop: Header=BB2_4 Depth=1
	movl	%r13d, (%rbx)
	cmpq	%r15, %r14
	je	.LBB2_16
.LBB2_2:                                #   in Loop: Header=BB2_4 Depth=1
	movl	%r12d, (%r14)
	addq	$4, %r14
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	%r14, 8(%rax)
	movq	(%rsp), %r12                    # 8-byte Reload
	movq	%r12, %r13
.LBB2_3:                                #   in Loop: Header=BB2_4 Depth=1
	movq	56(%rsp), %rax
	movq	-24(%rax), %rax
	leaq	56(%rsp), %rbx
	movq	240(%rax,%rbx), %rbp
	testq	%rbp, %rbp
	je	.LBB2_36
.LBB2_4:                                # =>This Inner Loop Header: Depth=1
	cmpb	$0, 56(%rbp)
	je	.LBB2_6
# %bb.5:                                #   in Loop: Header=BB2_4 Depth=1
	movzbl	67(%rbp), %eax
	jmp	.LBB2_8
	.p2align	4, 0x90
.LBB2_6:                                #   in Loop: Header=BB2_4 Depth=1
.Ltmp0:
	movq	%rbp, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp1:
# %bb.7:                                #   in Loop: Header=BB2_4 Depth=1
	movq	(%rbp), %rax
.Ltmp2:
	movq	%rbp, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp3:
.LBB2_8:                                #   in Loop: Header=BB2_4 Depth=1
.Ltmp4:
	movsbl	%al, %edx
	movq	%rbx, %rdi
	leaq	24(%rsp), %rsi
	callq	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_@PLT
.Ltmp5:
# %bb.9:                                #   in Loop: Header=BB2_4 Depth=1
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	testb	$5, 32(%rcx,%rax)
	movq	24(%rsp), %rbp
	jne	.LBB2_25
# %bb.10:                               #   in Loop: Header=BB2_4 Depth=1
	movq	%r12, (%rsp)                    # 8-byte Spill
	callq	__errno_location@PLT
	movq	%rax, %rbx
	movl	(%rax), %r13d
	movl	$0, (%rax)
	movq	%rbp, %rdi
	leaq	16(%rsp), %rsi
	movl	$10, %edx
	callq	strtol@PLT
	cmpq	%rbp, 16(%rsp)
	je	.LBB2_31
# %bb.11:                               #   in Loop: Header=BB2_4 Depth=1
	movq	%rax, %r12
	movl	(%rbx), %eax
	cmpl	$34, %eax
	je	.LBB2_29
# %bb.12:                               #   in Loop: Header=BB2_4 Depth=1
	movq	%r12, %rcx
	subq	$-2147483648, %rcx              # imm = 0x80000000
	shrq	$32, %rcx
	jne	.LBB2_29
# %bb.13:                               #   in Loop: Header=BB2_4 Depth=1
	testl	%eax, %eax
	je	.LBB2_15
# %bb.14:                               #   in Loop: Header=BB2_4 Depth=1
	cmpq	%r15, %r14
	jne	.LBB2_2
.LBB2_16:                               #   in Loop: Header=BB2_4 Depth=1
	subq	(%rsp), %r15                    # 8-byte Folded Reload
	movabsq	$9223372036854775804, %rax      # imm = 0x7FFFFFFFFFFFFFFC
	cmpq	%rax, %r15
	je	.LBB2_33
# %bb.17:                               #   in Loop: Header=BB2_4 Depth=1
	movq	%r15, %rbx
	sarq	$2, %rbx
	testq	%r15, %r15
	movq	%rbx, %rax
	movl	$1, %ecx
	cmoveq	%rcx, %rax
	leaq	(%rax,%rbx), %rbp
	movabsq	$2305843009213693951, %rcx      # imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rcx, %rbp
	cmovaq	%rcx, %rbp
	addq	%rbx, %rax
	cmovbq	%rcx, %rbp
	testq	%rbp, %rbp
	je	.LBB2_24
# %bb.18:                               #   in Loop: Header=BB2_4 Depth=1
	leaq	(,%rbp,4), %rdi
.Ltmp7:
	callq	_Znwm@PLT
.Ltmp8:
# %bb.19:                               #   in Loop: Header=BB2_4 Depth=1
	movq	%rax, %r13
	movl	%r12d, (%r13,%rbx,4)
	testq	%r15, %r15
	movq	(%rsp), %r12                    # 8-byte Reload
	jle	.LBB2_21
.LBB2_20:                               #   in Loop: Header=BB2_4 Depth=1
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	memmove@PLT
.LBB2_21:                               #   in Loop: Header=BB2_4 Depth=1
	leaq	(,%rbx,4), %r14
	addq	%r13, %r14
	addq	$4, %r14
	testq	%r12, %r12
	je	.LBB2_23
# %bb.22:                               #   in Loop: Header=BB2_4 Depth=1
	movq	%r12, %rdi
	callq	_ZdlPv@PLT
.LBB2_23:                               #   in Loop: Header=BB2_4 Depth=1
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	%r13, (%rax)
	movq	%r14, 8(%rax)
	leaq	(,%rbp,4), %r15
	addq	%r13, %r15
	movq	%r15, 16(%rax)
	movq	%r13, %r12
	jmp	.LBB2_3
.LBB2_24:                               #   in Loop: Header=BB2_4 Depth=1
	xorl	%r13d, %r13d
	movl	%r12d, (%r13,%rbx,4)
	testq	%r15, %r15
	movq	(%rsp), %r12                    # 8-byte Reload
	jg	.LBB2_20
	jmp	.LBB2_21
.LBB2_25:
	leaq	40(%rsp), %rax
	cmpq	%rax, %rbp
	je	.LBB2_27
# %bb.26:
	movq	%rbp, %rdi
	callq	_ZdlPv@PLT
.LBB2_27:
	movq	_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rax
	movq	8(%rbx), %rbp
	movq	%rax, 56(%rsp)
	movq	24(%rbx), %rcx
	movq	-24(%rax), %rax
	movq	%rcx, 56(%rsp,%rax)
	leaq	72(%rsp), %rdi
	callq	_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev@PLT
	movq	%rbp, 56(%rsp)
	movq	16(%rbx), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 56(%rsp,%rcx)
	movq	$0, 64(%rsp)
	leaq	312(%rsp), %rdi
	callq	_ZNSt8ios_baseD2Ev@PLT
	movq	%fs:40, %rax
	cmpq	576(%rsp), %rax
	jne	.LBB2_38
# %bb.28:
	movq	8(%rsp), %rax                   # 8-byte Reload
	addq	$584, %rsp                      # imm = 0x248
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB2_29:
	.cfi_def_cfa_offset 640
.Ltmp13:
	leaq	.L.str.5(%rip), %rdi
	callq	_ZSt20__throw_out_of_rangePKc@PLT
.Ltmp14:
# %bb.30:
.LBB2_31:
.Ltmp15:
	leaq	.L.str.5(%rip), %rdi
	callq	_ZSt24__throw_invalid_argumentPKc@PLT
.Ltmp16:
# %bb.32:
.LBB2_33:
.Ltmp10:
	leaq	.L.str.13(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp11:
# %bb.34:
.LBB2_35:
	xorl	%r13d, %r13d
.LBB2_36:
.Ltmp18:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp19:
# %bb.37:
.LBB2_38:
	callq	__stack_chk_fail@PLT
.LBB2_39:
.Ltmp9:
	jmp	.LBB2_41
.LBB2_40:
.Ltmp12:
.LBB2_41:
	movq	%rax, %rbp
	jmp	.LBB2_46
.LBB2_42:
.Ltmp20:
	movq	%rax, %rbp
	movq	%r13, %r12
	jmp	.LBB2_47
.LBB2_43:
.Ltmp6:
	movq	%rax, %rbp
	jmp	.LBB2_47
.LBB2_44:
.Ltmp17:
	movq	%rax, %rbp
	cmpl	$0, (%rbx)
	jne	.LBB2_46
# %bb.45:
	movl	%r13d, (%rbx)
.LBB2_46:
	movq	(%rsp), %r12                    # 8-byte Reload
.LBB2_47:
	movq	24(%rsp), %rdi
	leaq	40(%rsp), %rax
	cmpq	%rax, %rdi
	jne	.LBB2_50
# %bb.48:
	leaq	56(%rsp), %rdi
	callq	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	testq	%r12, %r12
	jne	.LBB2_51
.LBB2_49:
	movq	%rbp, %rdi
	callq	_Unwind_Resume@PLT
.LBB2_50:
	callq	_ZdlPv@PLT
	leaq	56(%rsp), %rdi
	callq	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	testq	%r12, %r12
	je	.LBB2_49
.LBB2_51:
	movq	%r12, %rdi
	callq	_ZdlPv@PLT
	movq	%rbp, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end2:
	.size	_Z10load_inputRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end2-_Z10load_inputRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table2:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp5-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp5
	.uleb128 .Ltmp6-.Lfunc_begin0           #     jumps to .Ltmp6
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp8-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp8
	.uleb128 .Ltmp9-.Lfunc_begin0           #     jumps to .Ltmp9
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp13-.Ltmp8                 #   Call between .Ltmp8 and .Ltmp13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp16-.Ltmp13                #   Call between .Ltmp13 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp11-.Ltmp10                #   Call between .Ltmp10 and .Ltmp11
	.uleb128 .Ltmp12-.Lfunc_begin0          #     jumps to .Ltmp12
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin0          #     jumps to .Ltmp20
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Lfunc_end2-.Ltmp19            #   Call between .Ltmp19 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function _ZL17benchmark_solve_1RN9benchmark5StateE
	.type	_ZL17benchmark_solve_1RN9benchmark5StateE,@function
_ZL17benchmark_solve_1RN9benchmark5StateE: # @_ZL17benchmark_solve_1RN9benchmark5StateE
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbp
	movq	%fs:40, %rax
	movq	%rax, 64(%rsp)
	leaq	48(%rsp), %rbx
	movq	%rbx, 32(%rsp)
	movabsq	$8679613459571175017, %rax      # imm = 0x78742E7475706E69
	movq	%rax, 48(%rsp)
	movw	$116, 56(%rsp)
	movq	$9, 40(%rsp)
.Ltmp21:
	leaq	8(%rsp), %rdi
	leaq	32(%rsp), %rsi
	callq	_Z10load_inputRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Ltmp22:
# %bb.1:
	movq	32(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.LBB3_3
# %bb.2:
	callq	_ZdlPv@PLT
.LBB3_3:
	movb	26(%rbp), %r12b
	movq	16(%rbp), %r15
.Ltmp24:
	movq	%rbp, (%rsp)                    # 8-byte Spill
	movq	%rbp, %rdi
	callq	_ZN9benchmark5State16StartKeepRunningEv@PLT
.Ltmp25:
# %bb.4:
	movq	8(%rsp), %rbx
                                        # implicit-def: $ebp
	testb	%r12b, %r12b
	jne	.LBB3_19
# %bb.5:
                                        # implicit-def: $ebp
	testq	%r15, %r15
	je	.LBB3_19
# %bb.6:
	movq	16(%rsp), %rax
	subq	%rbx, %rax
	sarq	$2, %rax
	xorl	%ebp, %ebp
	cmpq	$2, %rax
	jb	.LBB3_19
# %bb.7:
	movl	(%rbx), %r13d
	leaq	-1(%rax), %rdx
	leaq	-33(%rax), %r8
	movq	%r8, %r11
	shrq	$5, %r11
	incq	%r11
	movq	%rdx, %r12
	andq	$-32, %r12
	leaq	1(%r12), %r9
	vpbroadcastd	%r13d, %ymm0
	movq	%r11, %r10
	andq	$-2, %r10
	negq	%r10
	jmp	.LBB3_8
	.p2align	4, 0x90
.LBB3_18:                               #   in Loop: Header=BB3_8 Depth=1
	decq	%r15
	je	.LBB3_19
.LBB3_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_12 Depth 2
                                        #     Child Loop BB3_17 Depth 2
	movl	$1, %edi
	movl	%r13d, %esi
	movl	$0, %ebp
	cmpq	$32, %rdx
	jb	.LBB3_17
# %bb.9:                                #   in Loop: Header=BB3_8 Depth=1
	vpxor	%xmm1, %xmm1, %xmm1
	cmpq	$32, %r8
	jae	.LBB3_11
# %bb.10:                               #   in Loop: Header=BB3_8 Depth=1
	xorl	%ebp, %ebp
	vmovdqa	%ymm0, %ymm2
	vpxor	%xmm3, %xmm3, %xmm3
	vpxor	%xmm4, %xmm4, %xmm4
	vpxor	%xmm5, %xmm5, %xmm5
	jmp	.LBB3_13
	.p2align	4, 0x90
.LBB3_11:                               #   in Loop: Header=BB3_8 Depth=1
	movq	%r10, %rdi
	xorl	%ebp, %ebp
	vmovdqa	%ymm0, %ymm2
	vpxor	%xmm3, %xmm3, %xmm3
	vpxor	%xmm4, %xmm4, %xmm4
	vpxor	%xmm5, %xmm5, %xmm5
	.p2align	4, 0x90
.LBB3_12:                               #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovdqu	4(%rbx,%rbp,4), %ymm6
	vmovdqu	36(%rbx,%rbp,4), %ymm7
	vmovdqu	68(%rbx,%rbp,4), %ymm8
	vmovdqu	100(%rbx,%rbp,4), %ymm9
	valignd	$7, %ymm2, %ymm6, %ymm2         # ymm2 = ymm2[7],ymm6[0,1,2,3,4,5,6]
	valignd	$7, %ymm6, %ymm7, %ymm10        # ymm10 = ymm6[7],ymm7[0,1,2,3,4,5,6]
	valignd	$7, %ymm7, %ymm8, %ymm11        # ymm11 = ymm7[7],ymm8[0,1,2,3,4,5,6]
	valignd	$7, %ymm8, %ymm9, %ymm12        # ymm12 = ymm8[7],ymm9[0,1,2,3,4,5,6]
	vpcmpgtd	%ymm2, %ymm6, %ymm2
	vpsubd	%ymm2, %ymm1, %ymm1
	vpcmpgtd	%ymm10, %ymm7, %ymm2
	vpsubd	%ymm2, %ymm3, %ymm3
	vpcmpgtd	%ymm11, %ymm8, %ymm2
	vpsubd	%ymm2, %ymm4, %ymm4
	vpcmpgtd	%ymm12, %ymm9, %ymm2
	vpsubd	%ymm2, %ymm5, %ymm5
	vmovdqu	132(%rbx,%rbp,4), %ymm6
	vmovdqu	164(%rbx,%rbp,4), %ymm7
	vmovdqu	196(%rbx,%rbp,4), %ymm8
	vmovdqu	228(%rbx,%rbp,4), %ymm2
	valignd	$7, %ymm9, %ymm6, %ymm9         # ymm9 = ymm9[7],ymm6[0,1,2,3,4,5,6]
	valignd	$7, %ymm6, %ymm7, %ymm10        # ymm10 = ymm6[7],ymm7[0,1,2,3,4,5,6]
	valignd	$7, %ymm7, %ymm8, %ymm11        # ymm11 = ymm7[7],ymm8[0,1,2,3,4,5,6]
	valignd	$7, %ymm8, %ymm2, %ymm12        # ymm12 = ymm8[7],ymm2[0,1,2,3,4,5,6]
	vpcmpgtd	%ymm9, %ymm6, %ymm6
	vpsubd	%ymm6, %ymm1, %ymm1
	vpcmpgtd	%ymm10, %ymm7, %ymm6
	vpsubd	%ymm6, %ymm3, %ymm3
	vpcmpgtd	%ymm11, %ymm8, %ymm6
	vpsubd	%ymm6, %ymm4, %ymm4
	vpcmpgtd	%ymm12, %ymm2, %ymm6
	vpsubd	%ymm6, %ymm5, %ymm5
	addq	$64, %rbp
	addq	$2, %rdi
	jne	.LBB3_12
.LBB3_13:                               #   in Loop: Header=BB3_8 Depth=1
	testb	$1, %r11b
	je	.LBB3_15
# %bb.14:                               #   in Loop: Header=BB3_8 Depth=1
	shlq	$2, %rbp
	orq	$4, %rbp
	vmovdqu	(%rbx,%rbp), %ymm6
	vmovdqu	32(%rbx,%rbp), %ymm7
	vmovdqu	64(%rbx,%rbp), %ymm8
	vmovdqu	96(%rbx,%rbp), %ymm9
	valignd	$7, %ymm2, %ymm6, %ymm2         # ymm2 = ymm2[7],ymm6[0,1,2,3,4,5,6]
	valignd	$7, %ymm8, %ymm9, %ymm10        # ymm10 = ymm8[7],ymm9[0,1,2,3,4,5,6]
	vpcmpgtd	%ymm10, %ymm9, %ymm10
	vpsubd	%ymm10, %ymm5, %ymm5
	valignd	$7, %ymm7, %ymm8, %ymm10        # ymm10 = ymm7[7],ymm8[0,1,2,3,4,5,6]
	vpcmpgtd	%ymm10, %ymm8, %ymm8
	vpsubd	%ymm8, %ymm4, %ymm4
	valignd	$7, %ymm6, %ymm7, %ymm8         # ymm8 = ymm6[7],ymm7[0,1,2,3,4,5,6]
	vpcmpgtd	%ymm8, %ymm7, %ymm7
	vpsubd	%ymm7, %ymm3, %ymm3
	vpcmpgtd	%ymm2, %ymm6, %ymm2
	vpsubd	%ymm2, %ymm1, %ymm1
	vmovdqa	%ymm9, %ymm2
.LBB3_15:                               #   in Loop: Header=BB3_8 Depth=1
	vpaddd	%ymm5, %ymm3, %ymm3
	vpaddd	%ymm4, %ymm1, %ymm1
	vpaddd	%ymm3, %ymm1, %ymm1
	vextracti128	$1, %ymm1, %xmm3
	vpaddd	%xmm3, %xmm1, %xmm1
	vpshufd	$238, %xmm1, %xmm3              # xmm3 = xmm1[2,3,2,3]
	vpaddd	%xmm3, %xmm1, %xmm1
	vpshufd	$85, %xmm1, %xmm3               # xmm3 = xmm1[1,1,1,1]
	vpaddd	%xmm3, %xmm1, %xmm1
	vmovd	%xmm1, %ebp
	cmpq	%r12, %rdx
	je	.LBB3_18
# %bb.16:                               #   in Loop: Header=BB3_8 Depth=1
	vextracti128	$1, %ymm2, %xmm1
	vpextrd	$3, %xmm1, %esi
	movq	%r9, %rdi
	.p2align	4, 0x90
.LBB3_17:                               #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx,%rdi,4), %ecx
	xorl	%r14d, %r14d
	cmpl	%esi, %ecx
	setg	%r14b
	addl	%r14d, %ebp
	incq	%rdi
	movl	%ecx, %esi
	cmpq	%rdi, %rax
	jne	.LBB3_17
	jmp	.LBB3_18
.LBB3_19:
.Ltmp26:
	movq	(%rsp), %rdi                    # 8-byte Reload
	vzeroupper
	callq	_ZN9benchmark5State17FinishKeepRunningEv@PLT
.Ltmp27:
# %bb.20:
.Ltmp29:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	.L.str.7(%rip), %rsi
	movl	$8, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp30:
# %bb.21:
.Ltmp31:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	movl	%ebp, %esi
	callq	_ZNSolsEi@PLT
.Ltmp32:
# %bb.22:
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r14), %rbp
	testq	%rbp, %rbp
	je	.LBB3_23
# %bb.27:
	cmpb	$0, 56(%rbp)
	je	.LBB3_29
# %bb.28:
	movb	67(%rbp), %al
	jmp	.LBB3_31
.LBB3_29:
.Ltmp33:
	movq	%rbp, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp34:
# %bb.30:
	movq	(%rbp), %rax
.Ltmp35:
	movq	%rbp, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp36:
.LBB3_31:
.Ltmp37:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
.Ltmp38:
# %bb.32:
.Ltmp39:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp40:
# %bb.33:
	testq	%rbx, %rbx
	je	.LBB3_35
# %bb.34:
	movq	%rbx, %rdi
	callq	_ZdlPv@PLT
.LBB3_35:
	movq	%fs:40, %rax
	cmpq	64(%rsp), %rax
	jne	.LBB3_42
# %bb.36:
	addq	$72, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB3_23:
	.cfi_def_cfa_offset 128
.Ltmp41:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp42:
# %bb.26:
.LBB3_42:
	callq	__stack_chk_fail@PLT
.LBB3_24:
.Ltmp23:
	movq	%rax, %rbp
	movq	32(%rsp), %rdi
	cmpq	%rbx, %rdi
	jne	.LBB3_40
	jmp	.LBB3_41
.LBB3_25:
.Ltmp28:
	movq	%rax, %rbp
	movq	8(%rsp), %rbx
	jmp	.LBB3_38
.LBB3_37:
.Ltmp43:
	movq	%rax, %rbp
.LBB3_38:
	testq	%rbx, %rbx
	je	.LBB3_41
# %bb.39:
	movq	%rbx, %rdi
.LBB3_40:
	callq	_ZdlPv@PLT
.LBB3_41:
	movq	%rbp, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end3:
	.size	_ZL17benchmark_solve_1RN9benchmark5StateE, .Lfunc_end3-_ZL17benchmark_solve_1RN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table3:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp21-.Lfunc_begin1          # >> Call Site 1 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin1          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp27-.Ltmp24                #   Call between .Ltmp24 and .Ltmp27
	.uleb128 .Ltmp28-.Lfunc_begin1          #     jumps to .Ltmp28
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp42-.Ltmp29                #   Call between .Ltmp29 and .Ltmp42
	.uleb128 .Ltmp43-.Lfunc_begin1          #     jumps to .Ltmp43
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Lfunc_end3-.Ltmp42            #   Call between .Ltmp42 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function _ZL17benchmark_solve_2RN9benchmark5StateE
	.type	_ZL17benchmark_solve_2RN9benchmark5StateE,@function
_ZL17benchmark_solve_2RN9benchmark5StateE: # @_ZL17benchmark_solve_2RN9benchmark5StateE
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$64, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	leaq	40(%rsp), %rbx
	movq	%rbx, 24(%rsp)
	movabsq	$8679613459571175017, %rax      # imm = 0x78742E7475706E69
	movq	%rax, 40(%rsp)
	movw	$116, 48(%rsp)
	movq	$9, 32(%rsp)
.Ltmp44:
	movq	%rsp, %rdi
	leaq	24(%rsp), %rsi
	callq	_Z10load_inputRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Ltmp45:
# %bb.1:
	movq	24(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.LBB4_3
# %bb.2:
	callq	_ZdlPv@PLT
.LBB4_3:
	movb	26(%r14), %r12b
	movq	16(%r14), %r15
.Ltmp47:
	movq	%r14, %rdi
	callq	_ZN9benchmark5State16StartKeepRunningEv@PLT
.Ltmp48:
# %bb.4:
	movq	(%rsp), %rbx
                                        # implicit-def: $ebp
	testb	%r12b, %r12b
	jne	.LBB4_18
# %bb.5:
                                        # implicit-def: $ebp
	testq	%r15, %r15
	je	.LBB4_18
# %bb.6:
	movq	8(%rsp), %rax
	subq	%rbx, %rax
	sarq	$2, %rax
	xorl	%ebp, %ebp
	cmpq	$4, %rax
	jb	.LBB4_18
# %bb.7:
	leaq	-3(%rax), %rcx
	leaq	-35(%rax), %r8
	movq	%r8, %r10
	shrq	$5, %r10
	incq	%r10
	movq	%rcx, %r11
	andq	$-32, %r11
	leaq	3(%r11), %r12
	movq	%r10, %r9
	andq	$-2, %r9
	negq	%r9
	jmp	.LBB4_8
	.p2align	4, 0x90
.LBB4_17:                               #   in Loop: Header=BB4_8 Depth=1
	decq	%r15
	je	.LBB4_18
.LBB4_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_12 Depth 2
                                        #     Child Loop BB4_16 Depth 2
	movl	$3, %esi
	movl	$0, %ebp
	cmpq	$32, %rcx
	jb	.LBB4_16
# %bb.9:                                #   in Loop: Header=BB4_8 Depth=1
	vpxor	%xmm0, %xmm0, %xmm0
	cmpq	$32, %r8
	jae	.LBB4_11
# %bb.10:                               #   in Loop: Header=BB4_8 Depth=1
	xorl	%ebp, %ebp
	vpxor	%xmm2, %xmm2, %xmm2
	vpxor	%xmm1, %xmm1, %xmm1
	vpxor	%xmm3, %xmm3, %xmm3
	jmp	.LBB4_13
	.p2align	4, 0x90
.LBB4_11:                               #   in Loop: Header=BB4_8 Depth=1
	movq	%r9, %rsi
	xorl	%ebp, %ebp
	vpxor	%xmm2, %xmm2, %xmm2
	vpxor	%xmm1, %xmm1, %xmm1
	vpxor	%xmm3, %xmm3, %xmm3
	.p2align	4, 0x90
.LBB4_12:                               #   Parent Loop BB4_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovdqu	12(%rbx,%rbp,4), %ymm4
	vmovdqu	44(%rbx,%rbp,4), %ymm5
	vmovdqu	76(%rbx,%rbp,4), %ymm6
	vmovdqu	108(%rbx,%rbp,4), %ymm7
	vpcmpgtd	(%rbx,%rbp,4), %ymm4, %ymm4
	vpcmpgtd	32(%rbx,%rbp,4), %ymm5, %ymm5
	vpsubd	%ymm4, %ymm0, %ymm0
	vpsubd	%ymm5, %ymm2, %ymm2
	vpcmpgtd	64(%rbx,%rbp,4), %ymm6, %ymm4
	vpcmpgtd	96(%rbx,%rbp,4), %ymm7, %ymm5
	vpsubd	%ymm4, %ymm1, %ymm1
	vpsubd	%ymm5, %ymm3, %ymm3
	vmovdqu	140(%rbx,%rbp,4), %ymm4
	vmovdqu	172(%rbx,%rbp,4), %ymm5
	vmovdqu	204(%rbx,%rbp,4), %ymm6
	vmovdqu	236(%rbx,%rbp,4), %ymm7
	vpcmpgtd	128(%rbx,%rbp,4), %ymm4, %ymm4
	vpsubd	%ymm4, %ymm0, %ymm0
	vpcmpgtd	160(%rbx,%rbp,4), %ymm5, %ymm4
	vpsubd	%ymm4, %ymm2, %ymm2
	vpcmpgtd	192(%rbx,%rbp,4), %ymm6, %ymm4
	vpsubd	%ymm4, %ymm1, %ymm1
	vpcmpgtd	224(%rbx,%rbp,4), %ymm7, %ymm4
	vpsubd	%ymm4, %ymm3, %ymm3
	addq	$64, %rbp
	addq	$2, %rsi
	jne	.LBB4_12
.LBB4_13:                               #   in Loop: Header=BB4_8 Depth=1
	testb	$1, %r10b
	je	.LBB4_15
# %bb.14:                               #   in Loop: Header=BB4_8 Depth=1
	leaq	(,%rbp,4), %rsi
	orq	$12, %rsi
	vmovdqu	(%rbx,%rsi), %ymm4
	vmovdqu	32(%rbx,%rsi), %ymm5
	vmovdqu	64(%rbx,%rsi), %ymm6
	vmovdqu	96(%rbx,%rsi), %ymm7
	vpcmpgtd	96(%rbx,%rbp,4), %ymm7, %ymm7
	vpsubd	%ymm7, %ymm3, %ymm3
	vpcmpgtd	64(%rbx,%rbp,4), %ymm6, %ymm6
	vpsubd	%ymm6, %ymm1, %ymm1
	vpcmpgtd	32(%rbx,%rbp,4), %ymm5, %ymm5
	vpsubd	%ymm5, %ymm2, %ymm2
	vpcmpgtd	(%rbx,%rbp,4), %ymm4, %ymm4
	vpsubd	%ymm4, %ymm0, %ymm0
.LBB4_15:                               #   in Loop: Header=BB4_8 Depth=1
	vpaddd	%ymm3, %ymm2, %ymm2
	vpaddd	%ymm1, %ymm0, %ymm0
	vpaddd	%ymm2, %ymm0, %ymm0
	vextracti128	$1, %ymm0, %xmm1
	vpaddd	%xmm1, %xmm0, %xmm0
	vpshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	vpaddd	%xmm1, %xmm0, %xmm0
	vpshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	vpaddd	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, %ebp
	movq	%r12, %rsi
	cmpq	%r11, %rcx
	je	.LBB4_17
	.p2align	4, 0x90
.LBB4_16:                               #   Parent Loop BB4_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx,%rsi,4), %edi
	xorl	%edx, %edx
	cmpl	-12(%rbx,%rsi,4), %edi
	setg	%dl
	addl	%edx, %ebp
	incq	%rsi
	cmpq	%rsi, %rax
	jne	.LBB4_16
	jmp	.LBB4_17
.LBB4_18:
.Ltmp49:
	movq	%r14, %rdi
	vzeroupper
	callq	_ZN9benchmark5State17FinishKeepRunningEv@PLT
.Ltmp50:
# %bb.19:
.Ltmp52:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	.L.str.12(%rip), %rsi
	movl	$8, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp53:
# %bb.20:
.Ltmp54:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	movl	%ebp, %esi
	callq	_ZNSolsEi@PLT
.Ltmp55:
# %bb.21:
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r14), %rbp
	testq	%rbp, %rbp
	je	.LBB4_22
# %bb.26:
	cmpb	$0, 56(%rbp)
	je	.LBB4_28
# %bb.27:
	movb	67(%rbp), %al
	jmp	.LBB4_30
.LBB4_28:
.Ltmp56:
	movq	%rbp, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp57:
# %bb.29:
	movq	(%rbp), %rax
.Ltmp58:
	movq	%rbp, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp59:
.LBB4_30:
.Ltmp60:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
.Ltmp61:
# %bb.31:
.Ltmp62:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp63:
# %bb.32:
	testq	%rbx, %rbx
	je	.LBB4_34
# %bb.33:
	movq	%rbx, %rdi
	callq	_ZdlPv@PLT
.LBB4_34:
	movq	%fs:40, %rax
	cmpq	56(%rsp), %rax
	jne	.LBB4_41
# %bb.35:
	addq	$64, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB4_22:
	.cfi_def_cfa_offset 112
.Ltmp64:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp65:
# %bb.25:
.LBB4_41:
	callq	__stack_chk_fail@PLT
.LBB4_23:
.Ltmp46:
	movq	%rax, %rbp
	movq	24(%rsp), %rdi
	cmpq	%rbx, %rdi
	jne	.LBB4_39
	jmp	.LBB4_40
.LBB4_24:
.Ltmp51:
	movq	%rax, %rbp
	movq	(%rsp), %rbx
	jmp	.LBB4_37
.LBB4_36:
.Ltmp66:
	movq	%rax, %rbp
.LBB4_37:
	testq	%rbx, %rbx
	je	.LBB4_40
# %bb.38:
	movq	%rbx, %rdi
.LBB4_39:
	callq	_ZdlPv@PLT
.LBB4_40:
	movq	%rbp, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end4:
	.size	_ZL17benchmark_solve_2RN9benchmark5StateE, .Lfunc_end4-_ZL17benchmark_solve_2RN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table4:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp44-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp45-.Ltmp44                #   Call between .Ltmp44 and .Ltmp45
	.uleb128 .Ltmp46-.Lfunc_begin2          #     jumps to .Ltmp46
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp50-.Ltmp47                #   Call between .Ltmp47 and .Ltmp50
	.uleb128 .Ltmp51-.Lfunc_begin2          #     jumps to .Ltmp51
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp65-.Ltmp52                #   Call between .Ltmp52 and .Ltmp65
	.uleb128 .Ltmp66-.Lfunc_begin2          #     jumps to .Ltmp66
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Lfunc_end4-.Ltmp65            #   Call between .Ltmp65 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2
                                        # -- End function
	.text
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	movl	%edi, 4(%rsp)
	leaq	4(%rsp), %rdi
	callq	_ZN9benchmark10InitializeEPiPPc@PLT
	movl	4(%rsp), %edi
	movq	%rbx, %rsi
	callq	_ZN9benchmark27ReportUnrecognizedArgumentsEiPPc@PLT
	movl	%eax, %ecx
	movl	$1, %eax
	testb	%cl, %cl
	jne	.LBB5_2
# %bb.1:
	callq	_ZN9benchmark22RunSpecifiedBenchmarksEv@PLT
	callq	_ZN9benchmark8ShutdownEv@PLT
	xorl	%eax, %eax
.LBB5_2:
	movq	%fs:40, %rcx
	cmpq	8(%rsp), %rcx
	jne	.LBB5_4
# %bb.3:
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB5_4:
	.cfi_def_cfa_offset 32
	callq	__stack_chk_fail@PLT
.Lfunc_end5:
	.size	main, .Lfunc_end5-main
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_solution.cc
	.type	_GLOBAL__sub_I_solution.cc,@function
_GLOBAL__sub_I_solution.cc:             # @_GLOBAL__sub_I_solution.cc
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	callq	_ZN9benchmark8internal17InitializeStreamsEv@PLT
	leaq	_ZStL8__ioinit(%rip), %rbx
	movq	%rbx, %rdi
	callq	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	leaq	__dso_handle(%rip), %rdx
	movq	%rbx, %rsi
	callq	__cxa_atexit@PLT
	movl	$200, %edi
	callq	_Znwm@PLT
	movq	%rax, %rbx
.Ltmp67:
	leaq	.L.str(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZN9benchmark8internal9BenchmarkC2EPKc@PLT
.Ltmp68:
# %bb.1:
	movq	_ZTVN9benchmark8internal17FunctionBenchmarkE@GOTPCREL(%rip), %r14
	addq	$16, %r14
	movq	%r14, (%rbx)
	leaq	_ZL17benchmark_solve_1RN9benchmark5StateE(%rip), %rax
	movq	%rax, 192(%rbx)
	movq	%rbx, %rdi
	callq	_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE@PLT
	movq	%rax, _ZL33benchmark_uniq_2benchmark_solve_1(%rip)
	movl	$200, %edi
	callq	_Znwm@PLT
	movq	%rax, %rbx
.Ltmp70:
	leaq	.L.str.4(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZN9benchmark8internal9BenchmarkC2EPKc@PLT
.Ltmp71:
# %bb.2:
	movq	%r14, (%rbx)
	leaq	_ZL17benchmark_solve_2RN9benchmark5StateE(%rip), %rax
	movq	%rax, 192(%rbx)
	movq	%rbx, %rdi
	callq	_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE@PLT
	movq	%rax, _ZL33benchmark_uniq_3benchmark_solve_2(%rip)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB6_5:
	.cfi_def_cfa_offset 32
.Ltmp72:
	jmp	.LBB6_4
.LBB6_3:
.Ltmp69:
.LBB6_4:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	_ZdlPv@PLT
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end6:
	.size	_GLOBAL__sub_I_solution.cc, .Lfunc_end6-_GLOBAL__sub_I_solution.cc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table6:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp67-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp67
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp68-.Ltmp67                #   Call between .Ltmp67 and .Ltmp68
	.uleb128 .Ltmp69-.Lfunc_begin3          #     jumps to .Ltmp69
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp70-.Ltmp68                #   Call between .Ltmp68 and .Ltmp70
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp71-.Ltmp70                #   Call between .Ltmp70 and .Ltmp71
	.uleb128 .Ltmp72-.Lfunc_begin3          #     jumps to .Ltmp72
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp71-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Lfunc_end6-.Ltmp71            #   Call between .Ltmp71 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	_ZL33benchmark_uniq_2benchmark_solve_1,@object # @_ZL33benchmark_uniq_2benchmark_solve_1
	.local	_ZL33benchmark_uniq_2benchmark_solve_1
	.comm	_ZL33benchmark_uniq_2benchmark_solve_1,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"benchmark_solve_1"
	.size	.L.str, 18

	.type	_ZL33benchmark_uniq_3benchmark_solve_2,@object # @_ZL33benchmark_uniq_3benchmark_solve_2
	.local	_ZL33benchmark_uniq_3benchmark_solve_2
	.comm	_ZL33benchmark_uniq_3benchmark_solve_2,8,8
	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"benchmark_solve_2"
	.size	.L.str.4, 18

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"stoi"
	.size	.L.str.5, 5

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"input.txt"
	.size	.L.str.6, 10

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Part 1: "
	.size	.L.str.7, 9

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Part 2: "
	.size	.L.str.12, 9

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"vector::_M_realloc_insert"
	.size	.L.str.13, 26

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_solution.cc
	.section	".linker-options","e",@llvm_linker_options
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"aGw",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"clang version 13.0.0"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _ZL17benchmark_solve_1RN9benchmark5StateE
	.addrsig_sym _ZL17benchmark_solve_2RN9benchmark5StateE
	.addrsig_sym _GLOBAL__sub_I_solution.cc
	.addrsig_sym _Unwind_Resume
	.addrsig_sym __stack_chk_fail
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _ZSt4cout
