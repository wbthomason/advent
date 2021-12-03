	.text
	.file	"solution.cc"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function _Z7solve_1RKSt6vectorIjSaIjEE
.LCPI0_0:
	.long	1                               # 0x1
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_1:
	.quad	21474836481                     # 0x500000001
.LCPI0_2:
	.quad	17179869184                     # 0x400000000
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5
.LCPI0_3:
	.long	11                              # 0xb
	.long	10                              # 0xa
	.long	9                               # 0x9
	.long	8                               # 0x8
	.long	7                               # 0x7
	.long	6                               # 0x6
	.long	5                               # 0x5
	.long	4                               # 0x4
.LCPI0_4:
	.long	2048                            # 0x800
	.long	1024                            # 0x400
	.long	512                             # 0x200
	.long	256                             # 0x100
	.long	128                             # 0x80
	.long	64                              # 0x40
	.long	32                              # 0x20
	.long	16                              # 0x10
	.text
	.globl	_Z7solve_1RKSt6vectorIjSaIjEE
	.p2align	4, 0x90
	.type	_Z7solve_1RKSt6vectorIjSaIjEE,@function
_Z7solve_1RKSt6vectorIjSaIjEE:          # @_Z7solve_1RKSt6vectorIjSaIjEE
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	(%rdi), %r10
	movq	8(%rdi), %r11
	cmpq	%r11, %r10
	je	.LBB0_1
# %bb.2:
	movq	%r11, %r8
	subq	%r10, %r8
	addq	$-4, %r8
	cmpq	$60, %r8
	jae	.LBB0_4
# %bb.3:
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%edi, %edi
	xorl	%esi, %esi
	movq	%r10, %r14
	jmp	.LBB0_7
.LBB0_1:
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%edi, %edi
	xorl	%esi, %esi
	jmp	.LBB0_9
.LBB0_4:
	shrq	$2, %r8
	incq	%r8
	movq	%r8, %r9
	andq	$-16, %r9
	leaq	(%r10,%r9,4), %r14
	vpxord	%xmm29, %xmm29, %xmm29
	vpbroadcastd	.LCPI0_0(%rip), %ymm17  # ymm17 = [1,1,1,1,1,1,1,1]
	xorl	%esi, %esi
	vpxor	%xmm1, %xmm1, %xmm1
	vpxor	%xmm2, %xmm2, %xmm2
	vpxor	%xmm3, %xmm3, %xmm3
	vpxor	%xmm4, %xmm4, %xmm4
	vpxor	%xmm5, %xmm5, %xmm5
	vpxor	%xmm6, %xmm6, %xmm6
	vpxor	%xmm7, %xmm7, %xmm7
	vpxor	%xmm8, %xmm8, %xmm8
	vpxor	%xmm9, %xmm9, %xmm9
	vpxor	%xmm10, %xmm10, %xmm10
	vpxor	%xmm11, %xmm11, %xmm11
	vpxor	%xmm12, %xmm12, %xmm12
	vpxor	%xmm13, %xmm13, %xmm13
	vpxor	%xmm14, %xmm14, %xmm14
	vpxor	%xmm15, %xmm15, %xmm15
	vpxord	%xmm16, %xmm16, %xmm16
	vpxord	%xmm18, %xmm18, %xmm18
	vpxord	%xmm19, %xmm19, %xmm19
	vpxord	%xmm20, %xmm20, %xmm20
	vpxord	%xmm21, %xmm21, %xmm21
	vpxord	%xmm22, %xmm22, %xmm22
	vpxord	%xmm23, %xmm23, %xmm23
	vpxord	%xmm24, %xmm24, %xmm24
	.p2align	4, 0x90
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	vmovdqu64	(%r10,%rsi,4), %ymm25
	vmovdqu64	32(%r10,%rsi,4), %ymm26
	vpandd	%ymm17, %ymm25, %ymm27
	vpaddd	%ymm27, %ymm29, %ymm29
	vpandd	%ymm17, %ymm26, %ymm27
	vpaddd	%ymm27, %ymm1, %ymm1
	vpsrld	$1, %ymm25, %ymm27
	vpsrld	$1, %ymm26, %ymm28
	vpandd	%ymm17, %ymm27, %ymm27
	vpaddd	%ymm27, %ymm2, %ymm2
	vpandd	%ymm17, %ymm28, %ymm27
	vpaddd	%ymm27, %ymm3, %ymm3
	vpsrld	$2, %ymm25, %ymm27
	vpsrld	$2, %ymm26, %ymm28
	vpandd	%ymm17, %ymm27, %ymm27
	vpaddd	%ymm27, %ymm4, %ymm4
	vpandd	%ymm17, %ymm28, %ymm27
	vpaddd	%ymm27, %ymm5, %ymm5
	vpsrld	$3, %ymm25, %ymm27
	vpsrld	$3, %ymm26, %ymm28
	vpandd	%ymm17, %ymm27, %ymm27
	vpaddd	%ymm27, %ymm6, %ymm6
	vpandd	%ymm17, %ymm28, %ymm27
	vpaddd	%ymm27, %ymm7, %ymm7
	vpsrld	$4, %ymm25, %ymm27
	vpsrld	$4, %ymm26, %ymm28
	vpandd	%ymm17, %ymm27, %ymm27
	vpaddd	%ymm27, %ymm8, %ymm8
	vpandd	%ymm17, %ymm28, %ymm27
	vpaddd	%ymm27, %ymm9, %ymm9
	vpsrld	$5, %ymm25, %ymm27
	vpsrld	$5, %ymm26, %ymm28
	vpandd	%ymm17, %ymm27, %ymm27
	vpaddd	%ymm27, %ymm10, %ymm10
	vpandd	%ymm17, %ymm28, %ymm27
	vpaddd	%ymm27, %ymm11, %ymm11
	vpsrld	$6, %ymm25, %ymm27
	vpsrld	$6, %ymm26, %ymm28
	vpandd	%ymm17, %ymm27, %ymm27
	vpaddd	%ymm27, %ymm12, %ymm12
	vpandd	%ymm17, %ymm28, %ymm27
	vpaddd	%ymm27, %ymm13, %ymm13
	vpsrld	$7, %ymm25, %ymm27
	vpsrld	$7, %ymm26, %ymm28
	vpandd	%ymm17, %ymm27, %ymm27
	vpaddd	%ymm27, %ymm14, %ymm14
	vpandd	%ymm17, %ymm28, %ymm27
	vpaddd	%ymm27, %ymm15, %ymm15
	vpsrld	$8, %ymm25, %ymm27
	vpsrld	$8, %ymm26, %ymm28
	vpandd	%ymm17, %ymm27, %ymm27
	vpaddd	%ymm27, %ymm16, %ymm16
	vpandd	%ymm17, %ymm28, %ymm27
	vpaddd	%ymm27, %ymm18, %ymm18
	vpsrld	$9, %ymm25, %ymm27
	vpsrld	$9, %ymm26, %ymm28
	vpandd	%ymm17, %ymm27, %ymm27
	vpaddd	%ymm27, %ymm19, %ymm19
	vpandd	%ymm17, %ymm28, %ymm27
	vpaddd	%ymm27, %ymm20, %ymm20
	vpsrld	$10, %ymm25, %ymm27
	vpsrld	$10, %ymm26, %ymm28
	vpandd	%ymm17, %ymm27, %ymm27
	vpaddd	%ymm27, %ymm21, %ymm21
	vpandd	%ymm17, %ymm28, %ymm27
	vpaddd	%ymm27, %ymm22, %ymm22
	vpsrld	$11, %ymm25, %ymm25
	vpsrld	$11, %ymm26, %ymm26
	vpandd	%ymm17, %ymm25, %ymm25
	vpaddd	%ymm25, %ymm23, %ymm23
	vpandd	%ymm17, %ymm26, %ymm25
	vpaddd	%ymm25, %ymm24, %ymm24
	addq	$16, %rsi
	cmpq	%rsi, %r9
	jne	.LBB0_5
# %bb.6:
	vpaddd	%ymm23, %ymm24, %ymm17
	vextracti32x4	$1, %ymm17, %xmm0
	vpaddd	%xmm0, %xmm17, %xmm17
	vpshufd	$238, %xmm17, %xmm23            # xmm23 = xmm17[2,3,2,3]
	vpaddd	%ymm21, %ymm22, %ymm21
	vextracti32x4	$1, %ymm21, %xmm0
	vpaddd	%xmm0, %xmm21, %xmm21
	vpshufd	$238, %xmm21, %xmm22            # xmm22 = xmm21[2,3,2,3]
	vpaddd	%ymm19, %ymm20, %ymm19
	vextracti32x4	$1, %ymm19, %xmm0
	vpaddd	%xmm0, %xmm19, %xmm19
	vpshufd	$238, %xmm19, %xmm0             # xmm0 = xmm19[2,3,2,3]
	vpaddd	%xmm0, %xmm19, %xmm19
	vpshufd	$85, %xmm19, %xmm20             # xmm20 = xmm19[1,1,1,1]
	vpaddd	%ymm16, %ymm18, %ymm16
	vextracti32x4	$1, %ymm16, %xmm0
	vpaddd	%xmm0, %xmm16, %xmm16
	vpshufd	$238, %xmm16, %xmm0             # xmm0 = xmm16[2,3,2,3]
	vpaddd	%xmm0, %xmm16, %xmm16
	vpshufd	$85, %xmm16, %xmm18             # xmm18 = xmm16[1,1,1,1]
	vpaddd	%ymm14, %ymm15, %ymm14
	vextracti128	$1, %ymm14, %xmm0
	vpaddd	%xmm0, %xmm14, %xmm14
	vpshufd	$238, %xmm14, %xmm0             # xmm0 = xmm14[2,3,2,3]
	vpaddd	%xmm0, %xmm14, %xmm14
	vpaddd	%ymm12, %ymm13, %ymm12
	vextracti128	$1, %ymm12, %xmm0
	vpaddd	%xmm0, %xmm12, %xmm12
	vpshufd	$238, %xmm12, %xmm0             # xmm0 = xmm12[2,3,2,3]
	vpaddd	%xmm0, %xmm12, %xmm12
	vpaddd	%ymm10, %ymm11, %ymm10
	vextracti128	$1, %ymm10, %xmm0
	vpaddd	%xmm0, %xmm10, %xmm10
	vpshufd	$238, %xmm10, %xmm0             # xmm0 = xmm10[2,3,2,3]
	vpaddd	%xmm0, %xmm10, %xmm11
	vpshufd	$85, %xmm11, %xmm10             # xmm10 = xmm11[1,1,1,1]
	vpaddd	%ymm8, %ymm9, %ymm8
	vextracti128	$1, %ymm8, %xmm0
	vpaddd	%xmm0, %xmm8, %xmm8
	vpshufd	$238, %xmm8, %xmm0              # xmm0 = xmm8[2,3,2,3]
	vpaddd	%xmm0, %xmm8, %xmm0
	vpshufd	$85, %xmm0, %xmm8               # xmm8 = xmm0[1,1,1,1]
	vpaddd	%ymm6, %ymm7, %ymm6
	vextracti128	$1, %ymm6, %xmm7
	vpaddd	%xmm7, %xmm6, %xmm6
	vpshufd	$238, %xmm6, %xmm7              # xmm7 = xmm6[2,3,2,3]
	vpaddd	%xmm7, %xmm6, %xmm6
	vpshufd	$85, %xmm6, %xmm7               # xmm7 = xmm6[1,1,1,1]
	vpaddd	%xmm7, %xmm6, %xmm6
	vmovd	%xmm6, %esi
	vpaddd	%ymm4, %ymm5, %ymm4
	vextracti128	$1, %ymm4, %xmm5
	vpaddd	%xmm5, %xmm4, %xmm4
	vpshufd	$238, %xmm4, %xmm5              # xmm5 = xmm4[2,3,2,3]
	vpaddd	%xmm5, %xmm4, %xmm4
	vpshufd	$85, %xmm4, %xmm5               # xmm5 = xmm4[1,1,1,1]
	vpaddd	%xmm5, %xmm4, %xmm4
	vmovd	%xmm4, %edi
	vpaddd	%ymm2, %ymm3, %ymm2
	vextracti128	$1, %ymm2, %xmm3
	vpaddd	%xmm3, %xmm2, %xmm2
	vpshufd	$238, %xmm2, %xmm3              # xmm3 = xmm2[2,3,2,3]
	vpaddd	%xmm3, %xmm2, %xmm2
	vpshufd	$85, %xmm2, %xmm3               # xmm3 = xmm2[1,1,1,1]
	vpaddd	%xmm3, %xmm2, %xmm2
	vmovd	%xmm2, %ecx
	vpaddd	%ymm29, %ymm1, %ymm1
	vextracti128	$1, %ymm1, %xmm2
	vpaddd	%xmm2, %xmm1, %xmm1
	vpshufd	$238, %xmm1, %xmm2              # xmm2 = xmm1[2,3,2,3]
	vpaddd	%xmm2, %xmm1, %xmm1
	vpshufd	$85, %xmm1, %xmm2               # xmm2 = xmm1[1,1,1,1]
	vpaddd	%xmm2, %xmm1, %xmm1
	vmovd	%xmm1, %eax
	vpbroadcastq	.LCPI0_1(%rip), %xmm1   # xmm1 = [21474836481,21474836481]
	vpunpckldq	%xmm12, %xmm14, %xmm2   # xmm2 = xmm14[0],xmm12[0],xmm14[1],xmm12[1]
	vpermt2d	%xmm12, %xmm1, %xmm14
	vpaddd	%xmm2, %xmm14, %xmm2
	vinserti128	$1, %xmm2, %ymm0, %ymm2
	vpaddd	%xmm0, %xmm8, %xmm0
	vpaddd	%xmm10, %xmm11, %xmm3
	vpbroadcastq	.LCPI0_2(%rip), %xmm4   # xmm4 = [17179869184,17179869184]
	vpermt2d	%xmm0, %xmm4, %xmm3
	vinserti128	$1, %xmm3, %ymm0, %ymm0
	vpblendd	$192, %ymm0, %ymm2, %ymm0       # ymm0 = ymm2[0,1,2,3,4,5],ymm0[6,7]
	vpaddd	%xmm18, %xmm16, %xmm2
	vpaddd	%xmm20, %xmm19, %xmm3
	vpermt2d	%xmm2, %xmm4, %xmm3
	vpaddd	%xmm22, %xmm21, %xmm2
	vpaddd	%xmm23, %xmm17, %xmm4
	vpermi2d	%xmm2, %xmm4, %xmm1
	vpunpckldq	%xmm2, %xmm4, %xmm2     # xmm2 = xmm4[0],xmm2[0],xmm4[1],xmm2[1]
	vpaddd	%xmm1, %xmm2, %xmm1
	vpblendd	$12, %xmm3, %xmm1, %xmm1        # xmm1 = xmm1[0,1],xmm3[2,3]
	vpblendd	$240, %ymm0, %ymm1, %ymm0       # ymm0 = ymm1[0,1,2,3],ymm0[4,5,6,7]
	cmpq	%r9, %r8
	je	.LBB0_9
.LBB0_7:
	vmovdqa	.LCPI0_3(%rip), %ymm1           # ymm1 = [11,10,9,8,7,6,5,4]
	vpbroadcastd	.LCPI0_0(%rip), %ymm2   # ymm2 = [1,1,1,1,1,1,1,1]
	.p2align	4, 0x90
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movl	(%r14), %ebx
	movl	%ebx, %edx
	andl	$1, %edx
	addl	%edx, %eax
	movl	%ebx, %edx
	shrl	%edx
	andl	$1, %edx
	addl	%edx, %ecx
	movl	%ebx, %edx
	shrl	$2, %edx
	andl	$1, %edx
	addl	%edx, %edi
	vpbroadcastd	%ebx, %ymm3
	shrl	$3, %ebx
	andl	$1, %ebx
	addl	%ebx, %esi
	vpsrlvd	%ymm1, %ymm3, %ymm3
	vpand	%ymm2, %ymm3, %ymm3
	vpaddd	%ymm3, %ymm0, %ymm0
	addq	$4, %r14
	cmpq	%r11, %r14
	jne	.LBB0_8
.LBB0_9:
	subq	%r10, %r11
	shrq	$3, %r11
	xorl	%edx, %edx
	cmpl	%r11d, %eax
	seta	%dl
	xorl	%eax, %eax
	cmpl	%r11d, %ecx
	seta	%al
	addl	%eax, %eax
	xorl	%ecx, %ecx
	cmpl	%r11d, %edi
	seta	%cl
	shll	$2, %ecx
	xorl	%edi, %edi
	cmpl	%r11d, %esi
	seta	%dil
	shll	$3, %edi
	orl	%ecx, %edi
	orl	%eax, %edi
	orl	%edx, %edi
	vpbroadcastd	%r11d, %ymm1
	vpcmpnleud	%ymm1, %ymm0, %k1
	vmovdqa32	.LCPI0_4(%rip), %ymm0 {%k1} {z}
	vextracti128	$1, %ymm0, %xmm1
	vpor	%xmm1, %xmm0, %xmm0
	vpshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	vpor	%xmm1, %xmm0, %xmm0
	vpshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	vpor	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, %ecx
	orl	%edi, %ecx
	movl	%ecx, %eax
	xorl	$4095, %eax                     # imm = 0xFFF
	imull	%ecx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	vzeroupper
	retq
.Lfunc_end0:
	.size	_Z7solve_1RKSt6vectorIjSaIjEE, .Lfunc_end0-_Z7solve_1RKSt6vectorIjSaIjEE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function _Z12solve_1_alexRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE
.LCPI1_0:
	.byte	49                              # 0x31
	.byte	49                              # 0x31
	.byte	49                              # 0x31
	.byte	49                              # 0x31
	.byte	49                              # 0x31
	.byte	49                              # 0x31
	.byte	49                              # 0x31
	.byte	49                              # 0x31
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
.LCPI1_1:
	.byte	49                              # 0x31
	.byte	49                              # 0x31
	.byte	49                              # 0x31
	.byte	49                              # 0x31
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5
.LCPI1_2:
	.long	2048                            # 0x800
	.long	1024                            # 0x400
	.long	512                             # 0x200
	.long	256                             # 0x100
	.long	128                             # 0x80
	.long	64                              # 0x40
	.long	32                              # 0x20
	.long	16                              # 0x10
	.text
	.globl	_Z12solve_1_alexRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE
	.p2align	4, 0x90
	.type	_Z12solve_1_alexRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE,@function
_Z12solve_1_alexRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE: # @_Z12solve_1_alexRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %r9
	movq	8(%rdi), %rax
	subq	%r9, %rax
	movq	%rax, %r8
	sarq	$5, %r8
	testq	%rax, %rax
	je	.LBB1_1
# %bb.2:
	cmpq	$2, %r8
	movl	$1, %edi
	cmovaeq	%r8, %rdi
	leaq	-1(%rdi), %rax
	movl	%edi, %r10d
	andl	$3, %r10d
	cmpq	$3, %rax
	jae	.LBB1_4
# %bb.3:
	vpxor	%xmm0, %xmm0, %xmm0
	vpxor	%xmm1, %xmm1, %xmm1
	xorl	%esi, %esi
	jmp	.LBB1_6
.LBB1_1:
	vpxor	%xmm1, %xmm1, %xmm1
	vpxor	%xmm2, %xmm2, %xmm2
	vpxor	%xmm0, %xmm0, %xmm0
	jmp	.LBB1_10
.LBB1_4:
	andq	$-4, %rdi
	leaq	96(%r9), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	vpxor	%xmm1, %xmm1, %xmm1
	xorl	%esi, %esi
	vmovdqa	.LCPI1_0(%rip), %xmm2           # xmm2 = <49,49,49,49,49,49,49,49,u,u,u,u,u,u,u,u>
	vmovdqa	.LCPI1_1(%rip), %xmm3           # xmm3 = <49,49,49,49,u,u,u,u,u,u,u,u,u,u,u,u>
	.p2align	4, 0x90
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	movq	-96(%rax), %rcx
	movq	-64(%rax), %rdx
	vmovq	(%rcx), %xmm4                   # xmm4 = mem[0],zero
	vpcmpeqb	%xmm2, %xmm4, %k0
	vpmovm2d	%k0, %ymm4
	vpsubd	%ymm4, %ymm1, %ymm1
	vmovd	8(%rcx), %xmm4                  # xmm4 = mem[0],zero,zero,zero
	vpcmpeqb	%xmm3, %xmm4, %k0
	vpmovm2d	%k0, %xmm4
	vpsubd	%xmm4, %xmm0, %xmm0
	vmovq	(%rdx), %xmm4                   # xmm4 = mem[0],zero
	vpcmpeqb	%xmm2, %xmm4, %k0
	vpmovm2d	%k0, %ymm4
	vpsubd	%ymm4, %ymm1, %ymm1
	vmovd	8(%rdx), %xmm4                  # xmm4 = mem[0],zero,zero,zero
	vpcmpeqb	%xmm3, %xmm4, %k0
	vpmovm2d	%k0, %xmm4
	vpsubd	%xmm4, %xmm0, %xmm0
	movq	-32(%rax), %rcx
	vmovq	(%rcx), %xmm4                   # xmm4 = mem[0],zero
	vpcmpeqb	%xmm2, %xmm4, %k0
	vpmovm2d	%k0, %ymm4
	vmovd	8(%rcx), %xmm5                  # xmm5 = mem[0],zero,zero,zero
	vpsubd	%ymm4, %ymm1, %ymm1
	vpcmpeqb	%xmm3, %xmm5, %k0
	vpmovm2d	%k0, %xmm4
	movq	(%rax), %rcx
	vmovq	(%rcx), %xmm5                   # xmm5 = mem[0],zero
	vpsubd	%xmm4, %xmm0, %xmm0
	vpcmpeqb	%xmm2, %xmm5, %k0
	vpmovm2d	%k0, %ymm4
	vpsubd	%ymm4, %ymm1, %ymm1
	vmovd	8(%rcx), %xmm4                  # xmm4 = mem[0],zero,zero,zero
	vpcmpeqb	%xmm3, %xmm4, %k0
	vpmovm2d	%k0, %xmm4
	vpsubd	%xmm4, %xmm0, %xmm0
	addq	$4, %rsi
	subq	$-128, %rax
	cmpq	%rsi, %rdi
	jne	.LBB1_5
.LBB1_6:
	testq	%r10, %r10
	je	.LBB1_9
# %bb.7:
	shlq	$5, %rsi
	addq	%rsi, %r9
	shlq	$5, %r10
	xorl	%eax, %eax
	vmovdqa	.LCPI1_0(%rip), %xmm2           # xmm2 = <49,49,49,49,49,49,49,49,u,u,u,u,u,u,u,u>
	vmovdqa	.LCPI1_1(%rip), %xmm3           # xmm3 = <49,49,49,49,u,u,u,u,u,u,u,u,u,u,u,u>
	.p2align	4, 0x90
.LBB1_8:                                # =>This Inner Loop Header: Depth=1
	movq	(%r9,%rax), %rcx
	vmovq	(%rcx), %xmm4                   # xmm4 = mem[0],zero
	vpcmpeqb	%xmm2, %xmm4, %k0
	vpmovm2d	%k0, %ymm4
	vmovd	8(%rcx), %xmm5                  # xmm5 = mem[0],zero,zero,zero
	vpsubd	%ymm4, %ymm1, %ymm1
	vpcmpeqb	%xmm3, %xmm5, %k0
	vpmovm2d	%k0, %xmm4
	vpsubd	%xmm4, %xmm0, %xmm0
	addq	$32, %rax
	cmpq	%rax, %r10
	jne	.LBB1_8
.LBB1_9:
	vextracti128	$1, %ymm1, %xmm2
	vpmovzxdq	%xmm2, %ymm2            # ymm2 = xmm2[0],zero,xmm2[1],zero,xmm2[2],zero,xmm2[3],zero
	vpmovzxdq	%xmm1, %ymm1            # ymm1 = xmm1[0],zero,xmm1[1],zero,xmm1[2],zero,xmm1[3],zero
	vpmovzxdq	%xmm0, %ymm0            # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero
.LBB1_10:
	vpbroadcastq	%r8, %ymm3
	vpsrlq	$1, %ymm3, %ymm3
	vpcmpltuq	%ymm1, %ymm3, %k0
	vpcmpltuq	%ymm2, %ymm3, %k1
	kshiftlb	$4, %k1, %k1
	korb	%k1, %k0, %k1
	vmovdqa32	.LCPI1_2(%rip), %ymm1 {%k1} {z}
	shrq	%r8
	vextracti128	$1, %ymm1, %xmm2
	vpor	%xmm2, %xmm1, %xmm1
	vpshufd	$238, %xmm1, %xmm2              # xmm2 = xmm1[2,3,2,3]
	vpor	%xmm2, %xmm1, %xmm1
	vpshufd	$85, %xmm1, %xmm2               # xmm2 = xmm1[1,1,1,1]
	vpor	%xmm2, %xmm1, %xmm1
	vmovd	%xmm1, %eax
	vmovq	%xmm0, %rcx
	xorl	%edx, %edx
	cmpq	%rcx, %r8
	setb	%dl
	shll	$3, %edx
	vpextrq	$1, %xmm0, %rcx
	xorl	%esi, %esi
	cmpq	%rcx, %r8
	setb	%sil
	shll	$2, %esi
	orl	%edx, %esi
	vextracti128	$1, %ymm0, %xmm0
	vmovq	%xmm0, %rcx
	xorl	%edx, %edx
	cmpq	%rcx, %r8
	setb	%dl
	addl	%edx, %edx
	orl	%esi, %edx
	vpextrq	$1, %xmm0, %rcx
	xorl	%esi, %esi
	cmpq	%rcx, %r8
	setb	%sil
	orl	%edx, %esi
	orl	%eax, %esi
	movl	%esi, %eax
	xorl	$4095, %eax                     # imm = 0xFFF
	imull	%esi, %eax
	vzeroupper
	retq
.Lfunc_end1:
	.size	_Z12solve_1_alexRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE, .Lfunc_end1-_Z12solve_1_alexRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function _Z7solve_2RKSt6vectorIjSaIjEE
.LCPI2_0:
	.long	1                               # 0x1
	.text
	.globl	_Z7solve_2RKSt6vectorIjSaIjEE
	.p2align	4, 0x90
	.type	_Z7solve_2RKSt6vectorIjSaIjEE,@function
_Z7solve_2RKSt6vectorIjSaIjEE:          # @_Z7solve_2RKSt6vectorIjSaIjEE
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
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	(%rdi), %rcx
	movq	8(%rdi), %r9
	movq	%r9, %rax
	subq	%rcx, %rax
	movq	%rax, %r14
	sarq	$2, %r14
	testq	%rax, %rax
	je	.LBB2_4
# %bb.1:
	movq	%rdi, %rbp
	leaq	63(%r14), %rbx
	shrq	$3, %rbx
	andq	$-8, %rbx
	movq	%rbx, %rdi
	callq	_Znwm@PLT
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	%rax, %rdi
	movl	$255, %esi
	movq	%rbx, %rdx
	callq	memset@PLT
	movq	(%rbp), %rcx
	movq	8(%rbp), %r9
	movq	%r9, %r12
	subq	%rcx, %r12
	je	.LBB2_5
# %bb.2:
	movabsq	$2305843009213693944, %rax      # imm = 0x1FFFFFFFFFFFFFF8
	sarq	$2, %r12
	addq	$63, %r12
	movq	%r12, %rdi
	shrq	$3, %rdi
	andq	%rax, %rdi
.Ltmp0:
	callq	_Znwm@PLT
.Ltmp1:
# %bb.3:
	xorl	%ecx, %ecx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	shrq	$6, %r12
	shlq	$3, %r12
	movq	%rax, %rdi
	movl	$255, %esi
	movq	%r12, %rdx
	movq	%rax, %rbx
	callq	memset@PLT
	movq	%rbx, %rdi
	movq	(%rbp), %rcx
	movq	8(%rbp), %r9
	jmp	.LBB2_7
.LBB2_4:
	xorl	%eax, %eax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	jmp	.LBB2_6
.LBB2_5:
	xorl	%eax, %eax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
.LBB2_6:
	xorl	%edi, %edi
.LBB2_7:
	movl	$0, %eax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	subq	%rcx, %r9
	je	.LBB2_36
# %bb.8:
	movq	%r9, %rbp
	sarq	$2, %rbp
	cmpq	$2, %rbp
	movl	$1, %eax
	movl	$1, %ecx
	cmovaeq	%rbp, %rcx
	cmpq	$32, %rcx
	jae	.LBB2_27
# %bb.9:
	xorl	%esi, %esi
.LBB2_10:
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	24(%rsp), %r10                  # 8-byte Reload
.LBB2_11:
	incl	%ebx
	.p2align	4, 0x90
.LBB2_12:                               # =>This Inner Loop Header: Depth=1
	movl	(%r10,%rsi,4), %ecx
	shrl	$11, %ecx
	andl	$1, %ecx
	addl	%ecx, %eax
	addl	%ecx, %edx
	movl	%ebx, %esi
	incl	%ebx
	cmpq	%rsi, %rbp
	ja	.LBB2_12
.LBB2_13:
	testq	%r9, %r9
	je	.LBB2_35
# %bb.14:
	incl	%r14d
	shrl	%r14d
	cmpl	%r14d, %edx
	setb	2(%rsp)                         # 1-byte Folded Spill
	cmpl	%r14d, %eax
	setae	3(%rsp)                         # 1-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movl	$11, %ecx
	xorl	%eax, %eax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	jmp	.LBB2_16
	.p2align	4, 0x90
.LBB2_15:                               #   in Loop: Header=BB2_16 Depth=1
	incl	%r8d
	shrl	%r8d
	cmpl	%r8d, %r15d
	setae	3(%rsp)                         # 1-byte Folded Spill
	incl	%esi
	shrl	%esi
	cmpl	%esi, 36(%rsp)                  # 4-byte Folded Reload
	setb	2(%rsp)                         # 1-byte Folded Spill
	cmpl	$0, 48(%rsp)                    # 4-byte Folded Reload
	movl	4(%rsp), %eax                   # 4-byte Reload
	movl	%eax, %ecx
	je	.LBB2_36
.LBB2_16:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_20 Depth 2
	movl	$1, %eax
	shlxl	%ecx, %eax, %r12d
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	decl	%ecx
	movl	%ecx, 4(%rsp)                   # 4-byte Spill
	xorl	%r9d, %r9d
	xorl	%esi, %esi
	xorl	%r8d, %r8d
	movl	$0, 36(%rsp)                    # 4-byte Folded Spill
	xorl	%r15d, %r15d
	movq	16(%rsp), %rdx                  # 8-byte Reload
	jmp	.LBB2_20
	.p2align	4, 0x90
.LBB2_17:                               #   in Loop: Header=BB2_20 Depth=2
	movl	4(%rsp), %ecx                   # 4-byte Reload
	shrxl	%ecx, %ebx, %ecx
	andl	$1, %ecx
	addl	%ecx, 36(%rsp)                  # 4-byte Folded Spill
	incl	%esi
                                        # kill: def $r14d killed $r14d killed $r14 def $r14
	movq	%r14, 40(%rsp)                  # 8-byte Spill
.LBB2_18:                               #   in Loop: Header=BB2_20 Depth=2
	movq	16(%rsp), %rdx                  # 8-byte Reload
.LBB2_19:                               #   in Loop: Header=BB2_20 Depth=2
	movl	%eax, %r9d
	incl	%eax
	cmpq	%r9, %rbp
	jbe	.LBB2_15
.LBB2_20:                               #   Parent Loop BB2_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-1(%rax), %r14d
	movl	%r14d, %r10d
	shrl	$6, %r10d
	movl	$1, %ecx
	shlxq	%r14, %rcx, %r13
	movq	(%rdx,%r10,8), %r11
	btq	%r14, %r11
	jae	.LBB2_23
# %bb.21:                               #   in Loop: Header=BB2_20 Depth=2
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movl	(%rcx,%r9,4), %ecx
	testl	%r12d, %ecx
	sete	%bl
	xorb	3(%rsp), %bl                    # 1-byte Folded Reload
	testb	$1, %bl
	je	.LBB2_24
# %bb.22:                               #   in Loop: Header=BB2_20 Depth=2
	movl	4(%rsp), %ebx                   # 4-byte Reload
	shrxl	%ebx, %ecx, %ecx
	andl	$1, %ecx
	addl	%ecx, %r15d
	incl	%r8d
	movl	%r14d, %ecx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
.LBB2_23:                               #   in Loop: Header=BB2_20 Depth=2
	movq	(%rdi,%r10,8), %rcx
	testq	%r13, %rcx
	jne	.LBB2_25
	jmp	.LBB2_19
	.p2align	4, 0x90
.LBB2_24:                               #   in Loop: Header=BB2_20 Depth=2
	andnq	%r11, %r13, %rcx
	movq	%rcx, (%rdx,%r10,8)
	movq	(%rdi,%r10,8), %rcx
	testq	%r13, %rcx
	je	.LBB2_19
.LBB2_25:                               #   in Loop: Header=BB2_20 Depth=2
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movl	(%rdx,%r9,4), %ebx
	testl	%r12d, %ebx
	sete	%dl
	xorb	2(%rsp), %dl                    # 1-byte Folded Reload
	testb	$1, %dl
	jne	.LBB2_17
# %bb.26:                               #   in Loop: Header=BB2_20 Depth=2
	andnq	%rcx, %r13, %rcx
	movq	%rcx, (%rdi,%r10,8)
	jmp	.LBB2_18
.LBB2_27:
	cmpq	$2, %rbp
	cmovaeq	%rbp, %rax
	decq	%rax
	xorl	%esi, %esi
	cmpl	$-1, %eax
	je	.LBB2_10
# %bb.28:
	shrq	$32, %rax
	movl	$0, %ebx
	movl	$0, %edx
	movl	$0, %eax
	movq	24(%rsp), %r10                  # 8-byte Reload
	jne	.LBB2_11
# %bb.29:
	movq	%rcx, %rsi
	andq	$-32, %rsi
	leaq	-32(%rsi), %rax
	movq	%rax, %r8
	shrq	$5, %r8
	incq	%r8
	testq	%rax, %rax
	je	.LBB2_41
# %bb.30:
	movq	%r8, %rax
	andq	$-2, %rax
	negq	%rax
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%edx, %edx
	vpbroadcastd	.LCPI2_0(%rip), %ymm8   # ymm8 = [1,1,1,1,1,1,1,1]
	vpxor	%xmm1, %xmm1, %xmm1
	vpxor	%xmm2, %xmm2, %xmm2
	vpxor	%xmm4, %xmm4, %xmm4
	vpxor	%xmm3, %xmm3, %xmm3
	vpxor	%xmm5, %xmm5, %xmm5
	vpxor	%xmm6, %xmm6, %xmm6
	vpxor	%xmm7, %xmm7, %xmm7
	.p2align	4, 0x90
.LBB2_31:                               # =>This Inner Loop Header: Depth=1
	vpsrld	$11, (%r10,%rdx,4), %ymm9
	vpsrld	$11, 32(%r10,%rdx,4), %ymm10
	vpsrld	$11, 64(%r10,%rdx,4), %ymm11
	vpsrld	$11, 96(%r10,%rdx,4), %ymm12
	vpand	%ymm8, %ymm9, %ymm9
	vpand	%ymm8, %ymm10, %ymm10
	vpand	%ymm8, %ymm11, %ymm11
	vpand	%ymm8, %ymm12, %ymm12
	vpaddd	%ymm3, %ymm9, %ymm3
	vpaddd	%ymm5, %ymm10, %ymm5
	vpaddd	%ymm6, %ymm11, %ymm6
	vpaddd	%ymm7, %ymm12, %ymm7
	vpaddd	%ymm0, %ymm9, %ymm0
	vpaddd	%ymm1, %ymm10, %ymm1
	vpaddd	%ymm2, %ymm11, %ymm2
	vpaddd	%ymm4, %ymm12, %ymm4
	vpsrld	$11, 128(%r10,%rdx,4), %ymm9
	vpsrld	$11, 160(%r10,%rdx,4), %ymm10
	vpsrld	$11, 192(%r10,%rdx,4), %ymm11
	vpsrld	$11, 224(%r10,%rdx,4), %ymm12
	vpand	%ymm8, %ymm9, %ymm9
	vpand	%ymm8, %ymm10, %ymm10
	vpand	%ymm8, %ymm11, %ymm11
	vpand	%ymm8, %ymm12, %ymm12
	vpaddd	%ymm3, %ymm9, %ymm3
	vpaddd	%ymm5, %ymm10, %ymm5
	vpaddd	%ymm6, %ymm11, %ymm6
	vpaddd	%ymm7, %ymm12, %ymm7
	vpaddd	%ymm0, %ymm9, %ymm0
	vpaddd	%ymm1, %ymm10, %ymm1
	vpaddd	%ymm2, %ymm11, %ymm2
	vpaddd	%ymm4, %ymm12, %ymm4
	addq	$64, %rdx
	addq	$2, %rax
	jne	.LBB2_31
# %bb.32:
	testb	$1, %r8b
	je	.LBB2_34
.LBB2_33:
	vpsrld	$11, (%r10,%rdx,4), %ymm8
	vpsrld	$11, 32(%r10,%rdx,4), %ymm9
	vpsrld	$11, 64(%r10,%rdx,4), %ymm10
	vpsrld	$11, 96(%r10,%rdx,4), %ymm11
	vpbroadcastd	.LCPI2_0(%rip), %ymm12  # ymm12 = [1,1,1,1,1,1,1,1]
	vpand	%ymm12, %ymm8, %ymm8
	vpand	%ymm12, %ymm9, %ymm9
	vpand	%ymm12, %ymm10, %ymm10
	vpand	%ymm12, %ymm11, %ymm11
	vpaddd	%ymm4, %ymm11, %ymm4
	vpaddd	%ymm2, %ymm10, %ymm2
	vpaddd	%ymm1, %ymm9, %ymm1
	vpaddd	%ymm0, %ymm8, %ymm0
	vpaddd	%ymm7, %ymm11, %ymm7
	vpaddd	%ymm6, %ymm10, %ymm6
	vpaddd	%ymm5, %ymm9, %ymm5
	vpaddd	%ymm3, %ymm8, %ymm3
.LBB2_34:
	vpaddd	%ymm4, %ymm1, %ymm1
	vpaddd	%ymm2, %ymm0, %ymm0
	vpaddd	%ymm1, %ymm0, %ymm0
	vpaddd	%ymm7, %ymm5, %ymm1
	vpaddd	%ymm6, %ymm3, %ymm2
	vpaddd	%ymm1, %ymm2, %ymm1
	vextracti128	$1, %ymm1, %xmm2
	vpaddd	%xmm2, %xmm1, %xmm1
	vpshufd	$238, %xmm1, %xmm2              # xmm2 = xmm1[2,3,2,3]
	vpaddd	%xmm2, %xmm1, %xmm1
	vpshufd	$85, %xmm1, %xmm2               # xmm2 = xmm1[1,1,1,1]
	vpaddd	%xmm2, %xmm1, %xmm1
	vmovd	%xmm1, %eax
	vextracti128	$1, %ymm0, %xmm1
	vpaddd	%xmm1, %xmm0, %xmm0
	vpshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	vpaddd	%xmm1, %xmm0, %xmm0
	vpshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	vpaddd	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, %edx
	movl	%esi, %ebx
	cmpq	%rsi, %rcx
	jne	.LBB2_11
	jmp	.LBB2_13
.LBB2_35:
	xorl	%eax, %eax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
.LBB2_36:
	movl	8(%rsp), %eax                   # 4-byte Reload
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movl	(%rcx,%rax,4), %ebx
	movl	40(%rsp), %eax                  # 4-byte Reload
	movl	(%rcx,%rax,4), %ebp
	testq	%rdi, %rdi
	je	.LBB2_38
# %bb.37:
	vzeroupper
	callq	_ZdlPv@PLT
.LBB2_38:
	movq	16(%rsp), %rdi                  # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB2_40
# %bb.39:
	vzeroupper
	callq	_ZdlPv@PLT
.LBB2_40:
	imull	%ebx, %ebp
	movl	%ebp, %eax
	addq	$56, %rsp
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
	vzeroupper
	retq
.LBB2_41:
	.cfi_def_cfa_offset 112
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%edx, %edx
	vpxor	%xmm1, %xmm1, %xmm1
	vpxor	%xmm2, %xmm2, %xmm2
	vpxor	%xmm4, %xmm4, %xmm4
	vpxor	%xmm3, %xmm3, %xmm3
	vpxor	%xmm5, %xmm5, %xmm5
	vpxor	%xmm6, %xmm6, %xmm6
	vpxor	%xmm7, %xmm7, %xmm7
	testb	$1, %r8b
	jne	.LBB2_33
	jmp	.LBB2_34
.LBB2_42:
.Ltmp2:
	movq	%rax, %rbx
	movq	16(%rsp), %rdi                  # 8-byte Reload
	callq	_ZdlPv@PLT
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end2:
	.size	_Z7solve_2RKSt6vectorIjSaIjEE, .Lfunc_end2-_Z7solve_2RKSt6vectorIjSaIjEE
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
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Lfunc_end2-.Ltmp1             #   Call between .Ltmp1 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2
                                        # -- End function
	.text
	.globl	_Z10load_inputRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE # -- Begin function _Z10load_inputRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	4, 0x90
	.type	_Z10load_inputRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_Z10load_inputRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # @_Z10load_inputRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
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
	je	.LBB3_35
# %bb.1:
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
	jmp	.LBB3_4
	.p2align	4, 0x90
.LBB3_15:                               #   in Loop: Header=BB3_4 Depth=1
	movl	%r13d, (%rbx)
	cmpq	%r15, %r14
	je	.LBB3_16
.LBB3_2:                                #   in Loop: Header=BB3_4 Depth=1
	movl	%r12d, (%r14)
	addq	$4, %r14
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	%r14, 8(%rax)
	movq	(%rsp), %r12                    # 8-byte Reload
	movq	%r12, %r13
.LBB3_3:                                #   in Loop: Header=BB3_4 Depth=1
	movq	56(%rsp), %rax
	movq	-24(%rax), %rax
	leaq	56(%rsp), %rbx
	movq	240(%rax,%rbx), %rbp
	testq	%rbp, %rbp
	je	.LBB3_36
.LBB3_4:                                # =>This Inner Loop Header: Depth=1
	cmpb	$0, 56(%rbp)
	je	.LBB3_6
# %bb.5:                                #   in Loop: Header=BB3_4 Depth=1
	movzbl	67(%rbp), %eax
	jmp	.LBB3_8
	.p2align	4, 0x90
.LBB3_6:                                #   in Loop: Header=BB3_4 Depth=1
.Ltmp3:
	movq	%rbp, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp4:
# %bb.7:                                #   in Loop: Header=BB3_4 Depth=1
	movq	(%rbp), %rax
.Ltmp5:
	movq	%rbp, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp6:
.LBB3_8:                                #   in Loop: Header=BB3_4 Depth=1
.Ltmp7:
	movsbl	%al, %edx
	movq	%rbx, %rdi
	leaq	24(%rsp), %rsi
	callq	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_@PLT
.Ltmp8:
# %bb.9:                                #   in Loop: Header=BB3_4 Depth=1
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	testb	$5, 32(%rcx,%rax)
	movq	24(%rsp), %rbp
	jne	.LBB3_25
# %bb.10:                               #   in Loop: Header=BB3_4 Depth=1
	movq	%r12, (%rsp)                    # 8-byte Spill
	callq	__errno_location@PLT
	movq	%rax, %rbx
	movl	(%rax), %r13d
	movl	$0, (%rax)
	movq	%rbp, %rdi
	leaq	16(%rsp), %rsi
	movl	$2, %edx
	callq	strtol@PLT
	cmpq	%rbp, 16(%rsp)
	je	.LBB3_31
# %bb.11:                               #   in Loop: Header=BB3_4 Depth=1
	movq	%rax, %r12
	movl	(%rbx), %eax
	cmpl	$34, %eax
	je	.LBB3_29
# %bb.12:                               #   in Loop: Header=BB3_4 Depth=1
	movq	%r12, %rcx
	subq	$-2147483648, %rcx              # imm = 0x80000000
	shrq	$32, %rcx
	jne	.LBB3_29
# %bb.13:                               #   in Loop: Header=BB3_4 Depth=1
	testl	%eax, %eax
	je	.LBB3_15
# %bb.14:                               #   in Loop: Header=BB3_4 Depth=1
	cmpq	%r15, %r14
	jne	.LBB3_2
.LBB3_16:                               #   in Loop: Header=BB3_4 Depth=1
	subq	(%rsp), %r15                    # 8-byte Folded Reload
	movabsq	$9223372036854775804, %rax      # imm = 0x7FFFFFFFFFFFFFFC
	cmpq	%rax, %r15
	je	.LBB3_33
# %bb.17:                               #   in Loop: Header=BB3_4 Depth=1
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
	je	.LBB3_24
# %bb.18:                               #   in Loop: Header=BB3_4 Depth=1
	leaq	(,%rbp,4), %rdi
.Ltmp10:
	callq	_Znwm@PLT
.Ltmp11:
# %bb.19:                               #   in Loop: Header=BB3_4 Depth=1
	movq	%rax, %r13
	movl	%r12d, (%r13,%rbx,4)
	testq	%r15, %r15
	movq	(%rsp), %r12                    # 8-byte Reload
	jle	.LBB3_21
.LBB3_20:                               #   in Loop: Header=BB3_4 Depth=1
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	memmove@PLT
.LBB3_21:                               #   in Loop: Header=BB3_4 Depth=1
	leaq	(,%rbx,4), %r14
	addq	%r13, %r14
	addq	$4, %r14
	testq	%r12, %r12
	je	.LBB3_23
# %bb.22:                               #   in Loop: Header=BB3_4 Depth=1
	movq	%r12, %rdi
	callq	_ZdlPv@PLT
.LBB3_23:                               #   in Loop: Header=BB3_4 Depth=1
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	%r13, (%rax)
	movq	%r14, 8(%rax)
	leaq	(,%rbp,4), %r15
	addq	%r13, %r15
	movq	%r15, 16(%rax)
	movq	%r13, %r12
	jmp	.LBB3_3
.LBB3_24:                               #   in Loop: Header=BB3_4 Depth=1
	xorl	%r13d, %r13d
	movl	%r12d, (%r13,%rbx,4)
	testq	%r15, %r15
	movq	(%rsp), %r12                    # 8-byte Reload
	jg	.LBB3_20
	jmp	.LBB3_21
.LBB3_25:
	leaq	40(%rsp), %rax
	cmpq	%rax, %rbp
	je	.LBB3_27
# %bb.26:
	movq	%rbp, %rdi
	callq	_ZdlPv@PLT
.LBB3_27:
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
	jne	.LBB3_38
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
.LBB3_29:
	.cfi_def_cfa_offset 640
.Ltmp16:
	leaq	.L.str.7(%rip), %rdi
	callq	_ZSt20__throw_out_of_rangePKc@PLT
.Ltmp17:
# %bb.30:
.LBB3_31:
.Ltmp18:
	leaq	.L.str.7(%rip), %rdi
	callq	_ZSt24__throw_invalid_argumentPKc@PLT
.Ltmp19:
# %bb.32:
.LBB3_33:
.Ltmp13:
	leaq	.L.str.16(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp14:
# %bb.34:
.LBB3_35:
	xorl	%r13d, %r13d
.LBB3_36:
.Ltmp21:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp22:
# %bb.37:
.LBB3_38:
	callq	__stack_chk_fail@PLT
.LBB3_39:
.Ltmp12:
	jmp	.LBB3_41
.LBB3_40:
.Ltmp15:
.LBB3_41:
	movq	%rax, %rbp
	jmp	.LBB3_46
.LBB3_42:
.Ltmp23:
	movq	%rax, %rbp
	movq	%r13, %r12
	jmp	.LBB3_47
.LBB3_43:
.Ltmp9:
	movq	%rax, %rbp
	jmp	.LBB3_47
.LBB3_44:
.Ltmp20:
	movq	%rax, %rbp
	cmpl	$0, (%rbx)
	jne	.LBB3_46
# %bb.45:
	movl	%r13d, (%rbx)
.LBB3_46:
	movq	(%rsp), %r12                    # 8-byte Reload
.LBB3_47:
	movq	24(%rsp), %rdi
	leaq	40(%rsp), %rax
	cmpq	%rax, %rdi
	jne	.LBB3_50
# %bb.48:
	leaq	56(%rsp), %rdi
	callq	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	testq	%r12, %r12
	jne	.LBB3_51
.LBB3_49:
	movq	%rbp, %rdi
	callq	_Unwind_Resume@PLT
.LBB3_50:
	callq	_ZdlPv@PLT
	leaq	56(%rsp), %rdi
	callq	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	testq	%r12, %r12
	je	.LBB3_49
.LBB3_51:
	movq	%r12, %rdi
	callq	_ZdlPv@PLT
	movq	%rbp, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end3:
	.size	_Z10load_inputRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end3-_Z10load_inputRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
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
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp3-.Lfunc_begin1           #   Call between .Lfunc_begin1 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Ltmp8-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp8
	.uleb128 .Ltmp9-.Lfunc_begin1           #     jumps to .Ltmp9
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp11-.Ltmp10                #   Call between .Ltmp10 and .Ltmp11
	.uleb128 .Ltmp12-.Lfunc_begin1          #     jumps to .Ltmp12
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp16-.Ltmp11                #   Call between .Ltmp11 and .Ltmp16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp19-.Ltmp16                #   Call between .Ltmp16 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin1          #     jumps to .Ltmp20
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp14-.Ltmp13                #   Call between .Ltmp13 and .Ltmp14
	.uleb128 .Ltmp15-.Lfunc_begin1          #     jumps to .Ltmp15
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin1          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Lfunc_end3-.Ltmp22            #   Call between .Ltmp22 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2
                                        # -- End function
	.text
	.globl	_Z15load_input_alexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE # -- Begin function _Z15load_input_alexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	4, 0x90
	.type	_Z15load_input_alexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_Z15load_input_alexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # @_Z15load_input_alexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$560, %rsp                      # imm = 0x230
	.cfi_def_cfa_offset 608
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	%fs:40, %rax
	movq	%rax, 552(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rdi)
	movq	$0, 16(%rdi)
.Ltmp24:
	leaq	32(%rsp), %r15
	movq	%r15, %rdi
	movl	$8, %edx
	callq	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode@PLT
.Ltmp25:
# %bb.1:
	leaq	16(%rsp), %r13
	movq	%r13, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, 16(%rsp)
	movq	%rsp, %r12
	.p2align	4, 0x90
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	movq	32(%rsp), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r15), %rbx
	testq	%rbx, %rbx
	je	.LBB4_3
# %bb.5:                                #   in Loop: Header=BB4_2 Depth=1
	cmpb	$0, 56(%rbx)
	je	.LBB4_7
# %bb.6:                                #   in Loop: Header=BB4_2 Depth=1
	movzbl	67(%rbx), %eax
	jmp	.LBB4_9
	.p2align	4, 0x90
.LBB4_7:                                #   in Loop: Header=BB4_2 Depth=1
.Ltmp27:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp28:
# %bb.8:                                #   in Loop: Header=BB4_2 Depth=1
	movq	(%rbx), %rax
.Ltmp29:
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp30:
.LBB4_9:                                #   in Loop: Header=BB4_2 Depth=1
.Ltmp31:
	movsbl	%al, %edx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_@PLT
.Ltmp32:
# %bb.10:                               #   in Loop: Header=BB4_2 Depth=1
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	testb	$5, 32(%rcx,%rax)
	jne	.LBB4_17
# %bb.11:                               #   in Loop: Header=BB4_2 Depth=1
.Ltmp33:
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_
.Ltmp34:
	jmp	.LBB4_2
.LBB4_17:
	movq	(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.LBB4_19
# %bb.18:
	callq	_ZdlPv@PLT
.LBB4_19:
	movq	_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %r15
	movq	(%r15), %rax
	movq	8(%r15), %rbx
	movq	%rax, 32(%rsp)
	movq	24(%r15), %rcx
	movq	-24(%rax), %rax
	movq	%rcx, 32(%rsp,%rax)
	leaq	48(%rsp), %rdi
	callq	_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev@PLT
	movq	%rbx, 32(%rsp)
	movq	16(%r15), %rax
	movq	-24(%rbx), %rcx
	movq	%rax, 32(%rsp,%rcx)
	movq	$0, 40(%rsp)
	leaq	288(%rsp), %rdi
	callq	_ZNSt8ios_baseD2Ev@PLT
	movq	%fs:40, %rax
	cmpq	552(%rsp), %rax
	jne	.LBB4_23
# %bb.20:
	movq	%r14, %rax
	addq	$560, %rsp                      # imm = 0x230
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB4_3:
	.cfi_def_cfa_offset 608
.Ltmp36:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp37:
# %bb.4:
.LBB4_23:
	callq	__stack_chk_fail@PLT
.LBB4_21:
.Ltmp26:
	movq	%rax, %rbx
	jmp	.LBB4_22
.LBB4_13:
.Ltmp38:
	jmp	.LBB4_14
.LBB4_12:
.Ltmp35:
.LBB4_14:
	movq	%rax, %rbx
	movq	(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.LBB4_16
# %bb.15:
	callq	_ZdlPv@PLT
.LBB4_16:
	leaq	32(%rsp), %rdi
	callq	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
.LBB4_22:
	movq	%r14, %rdi
	callq	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end4:
	.size	_Z15load_input_alexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end4-_Z15load_input_alexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
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
	.uleb128 .Ltmp24-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin2          #     jumps to .Ltmp26
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp34-.Ltmp27                #   Call between .Ltmp27 and .Ltmp34
	.uleb128 .Ltmp35-.Lfunc_begin2          #     jumps to .Ltmp35
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp37-.Ltmp36                #   Call between .Ltmp36 and .Ltmp37
	.uleb128 .Ltmp38-.Lfunc_begin2          #     jumps to .Ltmp38
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Lfunc_end4-.Ltmp37            #   Call between .Ltmp37 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_,comdat
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_ # -- Begin function _ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_
	.p2align	4, 0x90
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_,@function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_: # @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %rdx
	movq	%rdi, %r14
	movq	8(%rdi), %r15
	cmpq	16(%rdi), %r15
	je	.LBB5_10
# %bb.1:
	leaq	16(%r15), %r13
	movq	%r13, (%r15)
	movq	(%rdx), %r12
	movq	8(%rdx), %rbx
	cmpq	$15, %rbx
	jbe	.LBB5_5
# %bb.2:
	testq	%rbx, %rbx
	js	.LBB5_12
# %bb.3:
	movq	%rbx, %rdi
	incq	%rdi
	js	.LBB5_13
# %bb.4:
	callq	_Znwm@PLT
	movq	%rax, %r13
	movq	%rax, (%r15)
	movq	%rbx, 16(%r15)
.LBB5_5:
	testq	%rbx, %rbx
	je	.LBB5_9
# %bb.6:
	cmpq	$1, %rbx
	jne	.LBB5_8
# %bb.7:
	movb	(%r12), %al
	movb	%al, (%r13)
	jmp	.LBB5_9
.LBB5_10:
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_
	movq	8(%r14), %rax
	jmp	.LBB5_11
.LBB5_8:
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
.LBB5_9:
	movq	%rbx, 8(%r15)
	movb	$0, (%r13,%rbx)
	movq	8(%r14), %rax
	addq	$32, %rax
	movq	%rax, 8(%r14)
.LBB5_11:
	addq	$-32, %rax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB5_13:
	.cfi_def_cfa_offset 48
	callq	_ZSt17__throw_bad_allocv@PLT
.LBB5_12:
	leaq	.L.str.11(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Lfunc_end5:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_, .Lfunc_end5-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,comdat
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev # -- Begin function _ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.p2align	4, 0x90
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,@function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev: # @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	(%rdi), %rbx
	movq	8(%rdi), %r15
	cmpq	%r15, %rbx
	je	.LBB6_6
# %bb.1:
	movq	%rdi, %r14
	jmp	.LBB6_2
	.p2align	4, 0x90
.LBB6_4:                                #   in Loop: Header=BB6_2 Depth=1
	addq	$16, %rbx
	cmpq	%r15, %rbx
	je	.LBB6_5
.LBB6_2:                                # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	addq	$16, %rbx
	cmpq	%rbx, %rdi
	je	.LBB6_4
# %bb.3:                                #   in Loop: Header=BB6_2 Depth=1
	callq	_ZdlPv@PLT
	jmp	.LBB6_4
.LBB6_5:
	movq	(%r14), %rbx
.LBB6_6:
	testq	%rbx, %rbx
	je	.LBB6_7
# %bb.8:
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	_ZdlPv@PLT                      # TAILCALL
.LBB6_7:
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, .Lfunc_end6-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function _ZL17benchmark_solve_1RN9benchmark5StateE
	.type	_ZL17benchmark_solve_1RN9benchmark5StateE,@function
_ZL17benchmark_solve_1RN9benchmark5StateE: # @_ZL17benchmark_solve_1RN9benchmark5StateE
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$72, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %r12
	movq	%fs:40, %rax
	movq	%rax, 64(%rsp)
	leaq	48(%rsp), %r14
	movq	%r14, 32(%rsp)
	movabsq	$8679613459571175017, %rax      # imm = 0x78742E7475706E69
	movq	%rax, 48(%rsp)
	movw	$116, 56(%rsp)
	movq	$9, 40(%rsp)
.Ltmp39:
	leaq	8(%rsp), %rdi
	leaq	32(%rsp), %rsi
	callq	_Z10load_inputRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Ltmp40:
# %bb.1:
	movq	32(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.LBB7_3
# %bb.2:
	callq	_ZdlPv@PLT
.LBB7_3:
	movb	26(%r12), %bl
	movq	16(%r12), %r15
.Ltmp42:
	movq	%r12, %rdi
	callq	_ZN9benchmark5State16StartKeepRunningEv@PLT
.Ltmp43:
# %bb.4:
	xorl	%r14d, %r14d
	testb	%bl, %bl
	jne	.LBB7_7
# %bb.5:
	testq	%r15, %r15
	je	.LBB7_7
# %bb.6:
	leaq	8(%rsp), %rdi
	callq	_Z7solve_1RKSt6vectorIjSaIjEE
	movl	%eax, %r14d
.LBB7_7:
.Ltmp44:
	movq	%r12, %rdi
	callq	_ZN9benchmark5State17FinishKeepRunningEv@PLT
.Ltmp45:
# %bb.8:
.Ltmp47:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	.L.str.9(%rip), %rsi
	movl	$8, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp48:
# %bb.9:
.Ltmp49:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	movq	%r14, %rsi
	callq	_ZNSo9_M_insertImEERSoT_@PLT
.Ltmp50:
# %bb.10:
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB7_11
# %bb.15:
	cmpb	$0, 56(%rbx)
	je	.LBB7_17
# %bb.16:
	movb	67(%rbx), %al
	jmp	.LBB7_19
.LBB7_17:
.Ltmp51:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp52:
# %bb.18:
	movq	(%rbx), %rax
.Ltmp53:
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp54:
.LBB7_19:
.Ltmp55:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
.Ltmp56:
# %bb.20:
.Ltmp57:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp58:
# %bb.21:
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB7_23
# %bb.22:
	callq	_ZdlPv@PLT
.LBB7_23:
	movq	%fs:40, %rax
	cmpq	64(%rsp), %rax
	jne	.LBB7_29
# %bb.24:
	addq	$72, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB7_11:
	.cfi_def_cfa_offset 112
.Ltmp59:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp60:
# %bb.14:
.LBB7_29:
	callq	__stack_chk_fail@PLT
.LBB7_12:
.Ltmp41:
	movq	%rax, %rbx
	movq	32(%rsp), %rdi
	cmpq	%r14, %rdi
	jne	.LBB7_27
	jmp	.LBB7_28
.LBB7_13:
.Ltmp46:
	jmp	.LBB7_26
.LBB7_25:
.Ltmp61:
.LBB7_26:
	movq	%rax, %rbx
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB7_28
.LBB7_27:
	callq	_ZdlPv@PLT
.LBB7_28:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end7:
	.size	_ZL17benchmark_solve_1RN9benchmark5StateE, .Lfunc_end7-_ZL17benchmark_solve_1RN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table7:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp39-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp40-.Ltmp39                #   Call between .Ltmp39 and .Ltmp40
	.uleb128 .Ltmp41-.Lfunc_begin3          #     jumps to .Ltmp41
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp45-.Ltmp42                #   Call between .Ltmp42 and .Ltmp45
	.uleb128 .Ltmp46-.Lfunc_begin3          #     jumps to .Ltmp46
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp60-.Ltmp47                #   Call between .Ltmp47 and .Ltmp60
	.uleb128 .Ltmp61-.Lfunc_begin3          #     jumps to .Ltmp61
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Lfunc_end7-.Ltmp60            #   Call between .Ltmp60 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function _ZL22benchmark_solve_1_alexRN9benchmark5StateE
	.type	_ZL22benchmark_solve_1_alexRN9benchmark5StateE,@function
_ZL22benchmark_solve_1_alexRN9benchmark5StateE: # @_ZL22benchmark_solve_1_alexRN9benchmark5StateE
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$72, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %r12
	movq	%fs:40, %rax
	movq	%rax, 64(%rsp)
	leaq	48(%rsp), %r14
	movq	%r14, 32(%rsp)
	movabsq	$8679613459571175017, %rax      # imm = 0x78742E7475706E69
	movq	%rax, 48(%rsp)
	movw	$116, 56(%rsp)
	movq	$9, 40(%rsp)
.Ltmp62:
	leaq	8(%rsp), %rdi
	leaq	32(%rsp), %rsi
	callq	_Z15load_input_alexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Ltmp63:
# %bb.1:
	movq	32(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.LBB8_3
# %bb.2:
	callq	_ZdlPv@PLT
.LBB8_3:
	movb	26(%r12), %bl
	movq	16(%r12), %r15
.Ltmp65:
	movq	%r12, %rdi
	callq	_ZN9benchmark5State16StartKeepRunningEv@PLT
.Ltmp66:
# %bb.4:
	xorl	%r14d, %r14d
	testb	%bl, %bl
	jne	.LBB8_7
# %bb.5:
	testq	%r15, %r15
	je	.LBB8_7
# %bb.6:
	leaq	8(%rsp), %rdi
	callq	_Z12solve_1_alexRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE
	movl	%eax, %r14d
.LBB8_7:
.Ltmp67:
	movq	%r12, %rdi
	callq	_ZN9benchmark5State17FinishKeepRunningEv@PLT
.Ltmp68:
# %bb.8:
.Ltmp70:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	.L.str.14(%rip), %rsi
	movl	$15, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp71:
# %bb.9:
.Ltmp72:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	movq	%r14, %rsi
	callq	_ZNSo9_M_insertImEERSoT_@PLT
.Ltmp73:
# %bb.10:
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB8_11
# %bb.16:
	cmpb	$0, 56(%rbx)
	je	.LBB8_18
# %bb.17:
	movb	67(%rbx), %al
	jmp	.LBB8_20
.LBB8_18:
.Ltmp74:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp75:
# %bb.19:
	movq	(%rbx), %rax
.Ltmp76:
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp77:
.LBB8_20:
.Ltmp78:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
.Ltmp79:
# %bb.21:
.Ltmp80:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp81:
# %bb.22:
	movq	8(%rsp), %rbx
	movq	16(%rsp), %r14
	cmpq	%r14, %rbx
	jne	.LBB8_23
# %bb.27:
	testq	%rbx, %rbx
	je	.LBB8_29
.LBB8_28:
	movq	%rbx, %rdi
	callq	_ZdlPv@PLT
.LBB8_29:
	movq	%fs:40, %rax
	cmpq	64(%rsp), %rax
	jne	.LBB8_34
# %bb.30:
	addq	$72, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
	.p2align	4, 0x90
.LBB8_25:                               #   in Loop: Header=BB8_23 Depth=1
	.cfi_def_cfa_offset 112
	addq	$16, %rbx
	cmpq	%r14, %rbx
	je	.LBB8_26
.LBB8_23:                               # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	addq	$16, %rbx
	cmpq	%rbx, %rdi
	je	.LBB8_25
# %bb.24:                               #   in Loop: Header=BB8_23 Depth=1
	callq	_ZdlPv@PLT
	jmp	.LBB8_25
.LBB8_26:
	movq	8(%rsp), %rbx
	testq	%rbx, %rbx
	jne	.LBB8_28
	jmp	.LBB8_29
.LBB8_11:
.Ltmp82:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp83:
# %bb.15:
.LBB8_34:
	callq	__stack_chk_fail@PLT
.LBB8_12:
.Ltmp64:
	movq	%rax, %rbx
	movq	32(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.LBB8_33
# %bb.13:
	callq	_ZdlPv@PLT
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.LBB8_14:
.Ltmp69:
	jmp	.LBB8_32
.LBB8_31:
.Ltmp84:
.LBB8_32:
	movq	%rax, %rbx
	leaq	8(%rsp), %rdi
	callq	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
.LBB8_33:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end8:
	.size	_ZL22benchmark_solve_1_alexRN9benchmark5StateE, .Lfunc_end8-_ZL22benchmark_solve_1_alexRN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table8:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp62-.Lfunc_begin4          # >> Call Site 1 <<
	.uleb128 .Ltmp63-.Ltmp62                #   Call between .Ltmp62 and .Ltmp63
	.uleb128 .Ltmp64-.Lfunc_begin4          #     jumps to .Ltmp64
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp68-.Ltmp65                #   Call between .Ltmp65 and .Ltmp68
	.uleb128 .Ltmp69-.Lfunc_begin4          #     jumps to .Ltmp69
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Ltmp83-.Ltmp70                #   Call between .Ltmp70 and .Ltmp83
	.uleb128 .Ltmp84-.Lfunc_begin4          #     jumps to .Ltmp84
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp83-.Lfunc_begin4          # >> Call Site 4 <<
	.uleb128 .Lfunc_end8-.Ltmp83            #   Call between .Ltmp83 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function _ZL17benchmark_solve_2RN9benchmark5StateE
	.type	_ZL17benchmark_solve_2RN9benchmark5StateE,@function
_ZL17benchmark_solve_2RN9benchmark5StateE: # @_ZL17benchmark_solve_2RN9benchmark5StateE
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$72, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movq	%fs:40, %rax
	movq	%rax, 64(%rsp)
	leaq	48(%rsp), %rbx
	movq	%rbx, 32(%rsp)
	movabsq	$8679613459571175017, %rax      # imm = 0x78742E7475706E69
	movq	%rax, 48(%rsp)
	movw	$116, 56(%rsp)
	movq	$9, 40(%rsp)
.Ltmp85:
	leaq	8(%rsp), %rdi
	leaq	32(%rsp), %rsi
	callq	_Z10load_inputRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Ltmp86:
# %bb.1:
	movq	32(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.LBB9_3
# %bb.2:
	callq	_ZdlPv@PLT
.LBB9_3:
	movb	26(%r15), %bpl
	movq	16(%r15), %rbx
.Ltmp88:
	movq	%r15, %rdi
	callq	_ZN9benchmark5State16StartKeepRunningEv@PLT
.Ltmp89:
# %bb.4:
	xorl	%r14d, %r14d
	testb	%bpl, %bpl
	jne	.LBB9_10
# %bb.5:
	testq	%rbx, %rbx
	je	.LBB9_10
# %bb.6:
	leaq	8(%rsp), %r14
	.p2align	4, 0x90
.LBB9_7:                                # =>This Inner Loop Header: Depth=1
.Ltmp90:
	movq	%r14, %rdi
	callq	_Z7solve_2RKSt6vectorIjSaIjEE
.Ltmp91:
# %bb.8:                                #   in Loop: Header=BB9_7 Depth=1
	decq	%rbx
	jne	.LBB9_7
# %bb.9:
	movl	%eax, %r14d
.LBB9_10:
.Ltmp93:
	movq	%r15, %rdi
	callq	_ZN9benchmark5State17FinishKeepRunningEv@PLT
.Ltmp94:
# %bb.11:
.Ltmp96:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	.L.str.15(%rip), %rsi
	movl	$8, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp97:
# %bb.12:
.Ltmp98:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	movq	%r14, %rsi
	callq	_ZNSo9_M_insertImEERSoT_@PLT
.Ltmp99:
# %bb.13:
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB9_14
# %bb.19:
	cmpb	$0, 56(%rbx)
	je	.LBB9_21
# %bb.20:
	movb	67(%rbx), %al
	jmp	.LBB9_23
.LBB9_21:
.Ltmp100:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp101:
# %bb.22:
	movq	(%rbx), %rax
.Ltmp102:
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp103:
.LBB9_23:
.Ltmp104:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
.Ltmp105:
# %bb.24:
.Ltmp106:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp107:
# %bb.25:
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB9_27
# %bb.26:
	callq	_ZdlPv@PLT
.LBB9_27:
	movq	%fs:40, %rax
	cmpq	64(%rsp), %rax
	jne	.LBB9_33
# %bb.28:
	addq	$72, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB9_14:
	.cfi_def_cfa_offset 112
.Ltmp108:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp109:
# %bb.18:
.LBB9_33:
	callq	__stack_chk_fail@PLT
.LBB9_15:
.Ltmp87:
	movq	%rax, %r14
	movq	32(%rsp), %rdi
	cmpq	%rbx, %rdi
	jne	.LBB9_31
	jmp	.LBB9_32
.LBB9_16:
.Ltmp95:
	jmp	.LBB9_30
.LBB9_29:
.Ltmp110:
	jmp	.LBB9_30
.LBB9_17:
.Ltmp92:
.LBB9_30:
	movq	%rax, %r14
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB9_32
.LBB9_31:
	callq	_ZdlPv@PLT
.LBB9_32:
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end9:
	.size	_ZL17benchmark_solve_2RN9benchmark5StateE, .Lfunc_end9-_ZL17benchmark_solve_2RN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table9:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp85-.Lfunc_begin5          # >> Call Site 1 <<
	.uleb128 .Ltmp86-.Ltmp85                #   Call between .Ltmp85 and .Ltmp86
	.uleb128 .Ltmp87-.Lfunc_begin5          #     jumps to .Ltmp87
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp88-.Lfunc_begin5          # >> Call Site 2 <<
	.uleb128 .Ltmp89-.Ltmp88                #   Call between .Ltmp88 and .Ltmp89
	.uleb128 .Ltmp95-.Lfunc_begin5          #     jumps to .Ltmp95
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp90-.Lfunc_begin5          # >> Call Site 3 <<
	.uleb128 .Ltmp91-.Ltmp90                #   Call between .Ltmp90 and .Ltmp91
	.uleb128 .Ltmp92-.Lfunc_begin5          #     jumps to .Ltmp92
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp93-.Lfunc_begin5          # >> Call Site 4 <<
	.uleb128 .Ltmp94-.Ltmp93                #   Call between .Ltmp93 and .Ltmp94
	.uleb128 .Ltmp95-.Lfunc_begin5          #     jumps to .Ltmp95
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp96-.Lfunc_begin5          # >> Call Site 5 <<
	.uleb128 .Ltmp109-.Ltmp96               #   Call between .Ltmp96 and .Ltmp109
	.uleb128 .Ltmp110-.Lfunc_begin5         #     jumps to .Ltmp110
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp109-.Lfunc_begin5         # >> Call Site 6 <<
	.uleb128 .Lfunc_end9-.Ltmp109           #   Call between .Ltmp109 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
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
	jne	.LBB10_2
# %bb.1:
	callq	_ZN9benchmark22RunSpecifiedBenchmarksEv@PLT
	callq	_ZN9benchmark8ShutdownEv@PLT
	xorl	%eax, %eax
.LBB10_2:
	movq	%fs:40, %rcx
	cmpq	8(%rsp), %rcx
	jne	.LBB10_4
# %bb.3:
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB10_4:
	.cfi_def_cfa_offset 32
	callq	__stack_chk_fail@PLT
.Lfunc_end10:
	.size	main, .Lfunc_end10-main
	.cfi_endproc
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate          # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	4, 0x90
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# %bb.0:
	pushq	%rax
	callq	__cxa_begin_catch@PLT
	callq	_ZSt9terminatev@PLT
.Lfunc_end11:
	.size	__clang_call_terminate, .Lfunc_end11-__clang_call_terminate
                                        # -- End function
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_,comdat
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ # -- Begin function _ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_
	.p2align	4, 0x90
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_,@function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_: # @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	(%rdi), %rsi
	movq	8(%rdi), %r15
	movq	%r15, %rax
	subq	%rsi, %rax
	movabsq	$9223372036854775776, %rcx      # imm = 0x7FFFFFFFFFFFFFE0
	cmpq	%rcx, %rax
	je	.LBB12_40
# %bb.1:
	movq	%rdx, %r13
	movq	%rax, %rcx
	sarq	$5, %rcx
	testq	%rax, %rax
	movl	$1, %eax
	cmovneq	%rcx, %rax
	leaq	(%rax,%rcx), %r14
	movq	%r14, %rdx
	shrq	$58, %rdx
	movabsq	$288230376151711743, %rdx       # imm = 0x3FFFFFFFFFFFFFF
	cmovneq	%rdx, %r14
	addq	%rcx, %rax
	cmovbq	%rdx, %r14
	movq	%rbx, %r12
	movq	%rsi, 24(%rsp)                  # 8-byte Spill
	subq	%rsi, %r12
	sarq	$5, %r12
	testq	%r14, %r14
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	je	.LBB12_2
# %bb.3:
	movq	%r14, %rdi
	shlq	$5, %rdi
	callq	_Znwm@PLT
	jmp	.LBB12_4
.LBB12_2:
	xorl	%eax, %eax
.LBB12_4:
	shlq	$5, %r12
	leaq	(%rax,%r12), %rbp
	addq	$16, %rbp
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	%rbp, (%rax,%r12)
	movq	(%r13), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	8(%r13), %r13
	cmpq	$15, %r13
	jbe	.LBB12_13
# %bb.5:
	testq	%r13, %r13
	js	.LBB12_6
# %bb.8:
	movq	%r13, %rdi
	incq	%rdi
	js	.LBB12_9
# %bb.11:
.Ltmp111:
	callq	_Znwm@PLT
.Ltmp112:
# %bb.12:
	movq	%rax, %rbp
	movq	8(%rsp), %rcx                   # 8-byte Reload
	leaq	(%rcx,%r12), %rax
	movq	%rbp, (%rax)
	movq	%r13, 16(%rcx,%r12)
.LBB12_13:
	testq	%r13, %r13
	je	.LBB12_17
# %bb.14:
	cmpq	$1, %r13
	jne	.LBB12_16
# %bb.15:
	movq	16(%rsp), %rax                  # 8-byte Reload
	movb	(%rax), %al
	movb	%al, (%rbp)
	jmp	.LBB12_17
.LBB12_16:
	movq	%rbp, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movq	%r13, %rdx
	callq	memcpy@PLT
.LBB12_17:
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	%r13, 8(%rax,%r12)
	movq	%rax, %r12
	movb	$0, (%rbp,%r13)
	movq	%rax, %rbp
	movq	24(%rsp), %rdi                  # 8-byte Reload
	cmpq	%rbx, %rdi
	je	.LBB12_24
# %bb.18:
	leaq	16(%r12), %rbp
	leaq	16(%rdi), %rax
	jmp	.LBB12_19
	.p2align	4, 0x90
.LBB12_21:                              #   in Loop: Header=BB12_19 Depth=1
	movq	%rcx, -16(%rbp)
	movq	(%rax), %rcx
	movq	%rcx, (%rbp)
.LBB12_22:                              #   in Loop: Header=BB12_19 Depth=1
	movq	-8(%rax), %rcx
	movq	%rcx, -8(%rbp)
	movq	%rax, -16(%rax)
	movq	$0, -8(%rax)
	movb	$0, (%rax)
	addq	$32, %rbp
	leaq	32(%rax), %rcx
	addq	$16, %rax
	cmpq	%rbx, %rax
	movq	%rcx, %rax
	je	.LBB12_23
.LBB12_19:                              # =>This Inner Loop Header: Depth=1
	movq	%rbp, -16(%rbp)
	movq	-16(%rax), %rcx
	cmpq	%rax, %rcx
	jne	.LBB12_21
# %bb.20:                               #   in Loop: Header=BB12_19 Depth=1
	vmovups	(%rcx), %xmm0
	vmovups	%xmm0, (%rbp)
	jmp	.LBB12_22
.LBB12_23:
	addq	$-16, %rbp
.LBB12_24:
	cmpq	%rbx, %r15
	je	.LBB12_25
# %bb.26:
	addq	$48, %rbp
	addq	$16, %rbx
	jmp	.LBB12_27
	.p2align	4, 0x90
.LBB12_29:                              #   in Loop: Header=BB12_27 Depth=1
	movq	%rax, -16(%rbp)
	movq	(%rbx), %rax
	movq	%rax, (%rbp)
.LBB12_30:                              #   in Loop: Header=BB12_27 Depth=1
	movq	-8(%rbx), %rax
	movq	%rax, -8(%rbp)
	movq	%rbx, -16(%rbx)
	movq	$0, -8(%rbx)
	movb	$0, (%rbx)
	addq	$32, %rbp
	leaq	32(%rbx), %rax
	addq	$16, %rbx
	cmpq	%r15, %rbx
	movq	%rax, %rbx
	je	.LBB12_31
.LBB12_27:                              # =>This Inner Loop Header: Depth=1
	movq	%rbp, -16(%rbp)
	movq	-16(%rbx), %rax
	cmpq	%rbx, %rax
	jne	.LBB12_29
# %bb.28:                               #   in Loop: Header=BB12_27 Depth=1
	vmovups	(%rax), %xmm0
	vmovups	%xmm0, (%rbp)
	jmp	.LBB12_30
.LBB12_31:
	addq	$-16, %rbp
	testq	%rdi, %rdi
	je	.LBB12_34
.LBB12_33:
	callq	_ZdlPv@PLT
.LBB12_34:
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	%r12, (%rax)
	movq	%rbp, 8(%rax)
	shlq	$5, %r14
	addq	%r12, %r14
	movq	%r14, 16(%rax)
	addq	$40, %rsp
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
.LBB12_25:
	.cfi_def_cfa_offset 96
	addq	$32, %rbp
	testq	%rdi, %rdi
	jne	.LBB12_33
	jmp	.LBB12_34
.LBB12_9:
.Ltmp113:
	callq	_ZSt17__throw_bad_allocv@PLT
.Ltmp114:
# %bb.10:
.LBB12_40:
	leaq	.L.str.16(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.LBB12_6:
.Ltmp115:
	leaq	.L.str.11(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp116:
# %bb.7:
.LBB12_38:
.Ltmp117:
	movq	%rax, %rdi
	callq	__cxa_begin_catch@PLT
	movq	8(%rsp), %rdi                   # 8-byte Reload
	callq	_ZdlPv@PLT
.Ltmp118:
	callq	__cxa_rethrow@PLT
.Ltmp119:
# %bb.39:
.LBB12_35:
.Ltmp120:
	movq	%rax, %rbx
.Ltmp121:
	callq	__cxa_end_catch@PLT
.Ltmp122:
# %bb.36:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.LBB12_37:
.Ltmp123:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end12:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_, .Lfunc_end12-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_,"aG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_,comdat
	.p2align	2
GCC_except_table12:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp111-.Lfunc_begin6         #   Call between .Lfunc_begin6 and .Ltmp111
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp111-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp112-.Ltmp111              #   Call between .Ltmp111 and .Ltmp112
	.uleb128 .Ltmp117-.Lfunc_begin6         #     jumps to .Ltmp117
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp112-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Ltmp113-.Ltmp112              #   Call between .Ltmp112 and .Ltmp113
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp113-.Lfunc_begin6         # >> Call Site 4 <<
	.uleb128 .Ltmp114-.Ltmp113              #   Call between .Ltmp113 and .Ltmp114
	.uleb128 .Ltmp117-.Lfunc_begin6         #     jumps to .Ltmp117
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp114-.Lfunc_begin6         # >> Call Site 5 <<
	.uleb128 .Ltmp115-.Ltmp114              #   Call between .Ltmp114 and .Ltmp115
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp115-.Lfunc_begin6         # >> Call Site 6 <<
	.uleb128 .Ltmp116-.Ltmp115              #   Call between .Ltmp115 and .Ltmp116
	.uleb128 .Ltmp117-.Lfunc_begin6         #     jumps to .Ltmp117
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp116-.Lfunc_begin6         # >> Call Site 7 <<
	.uleb128 .Ltmp118-.Ltmp116              #   Call between .Ltmp116 and .Ltmp118
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp118-.Lfunc_begin6         # >> Call Site 8 <<
	.uleb128 .Ltmp119-.Ltmp118              #   Call between .Ltmp118 and .Ltmp119
	.uleb128 .Ltmp120-.Lfunc_begin6         #     jumps to .Ltmp120
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp121-.Lfunc_begin6         # >> Call Site 9 <<
	.uleb128 .Ltmp122-.Ltmp121              #   Call between .Ltmp121 and .Ltmp122
	.uleb128 .Ltmp123-.Lfunc_begin6         #     jumps to .Ltmp123
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp122-.Lfunc_begin6         # >> Call Site 10 <<
	.uleb128 .Lfunc_end12-.Ltmp122          #   Call between .Ltmp122 and .Lfunc_end12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_solution.cc
	.type	_GLOBAL__sub_I_solution.cc,@function
_GLOBAL__sub_I_solution.cc:             # @_GLOBAL__sub_I_solution.cc
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
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
.Ltmp124:
	leaq	.L.str(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZN9benchmark8internal9BenchmarkC2EPKc@PLT
.Ltmp125:
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
.Ltmp127:
	leaq	.L.str.4(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZN9benchmark8internal9BenchmarkC2EPKc@PLT
.Ltmp128:
# %bb.2:
	movq	%r14, (%rbx)
	leaq	_ZL22benchmark_solve_1_alexRN9benchmark5StateE(%rip), %rax
	movq	%rax, 192(%rbx)
	movq	%rbx, %rdi
	callq	_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE@PLT
	movq	%rax, _ZL38benchmark_uniq_3benchmark_solve_1_alex(%rip)
	movl	$200, %edi
	callq	_Znwm@PLT
	movq	%rax, %rbx
.Ltmp130:
	leaq	.L.str.6(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZN9benchmark8internal9BenchmarkC2EPKc@PLT
.Ltmp131:
# %bb.3:
	movq	%r14, (%rbx)
	leaq	_ZL17benchmark_solve_2RN9benchmark5StateE(%rip), %rax
	movq	%rax, 192(%rbx)
	movq	%rbx, %rdi
	callq	_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE@PLT
	movq	%rax, _ZL33benchmark_uniq_4benchmark_solve_2(%rip)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB13_7:
	.cfi_def_cfa_offset 32
.Ltmp132:
	jmp	.LBB13_5
.LBB13_6:
.Ltmp129:
	jmp	.LBB13_5
.LBB13_4:
.Ltmp126:
.LBB13_5:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	_ZdlPv@PLT
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end13:
	.size	_GLOBAL__sub_I_solution.cc, .Lfunc_end13-_GLOBAL__sub_I_solution.cc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table13:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7    # >> Call Site 1 <<
	.uleb128 .Ltmp124-.Lfunc_begin7         #   Call between .Lfunc_begin7 and .Ltmp124
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp125-.Ltmp124              #   Call between .Ltmp124 and .Ltmp125
	.uleb128 .Ltmp126-.Lfunc_begin7         #     jumps to .Ltmp126
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp125-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Ltmp127-.Ltmp125              #   Call between .Ltmp125 and .Ltmp127
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp127-.Lfunc_begin7         # >> Call Site 4 <<
	.uleb128 .Ltmp128-.Ltmp127              #   Call between .Ltmp127 and .Ltmp128
	.uleb128 .Ltmp129-.Lfunc_begin7         #     jumps to .Ltmp129
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp128-.Lfunc_begin7         # >> Call Site 5 <<
	.uleb128 .Ltmp130-.Ltmp128              #   Call between .Ltmp128 and .Ltmp130
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp130-.Lfunc_begin7         # >> Call Site 6 <<
	.uleb128 .Ltmp131-.Ltmp130              #   Call between .Ltmp130 and .Ltmp131
	.uleb128 .Ltmp132-.Lfunc_begin7         #     jumps to .Ltmp132
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp131-.Lfunc_begin7         # >> Call Site 7 <<
	.uleb128 .Lfunc_end13-.Ltmp131          #   Call between .Ltmp131 and .Lfunc_end13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
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

	.type	_ZL38benchmark_uniq_3benchmark_solve_1_alex,@object # @_ZL38benchmark_uniq_3benchmark_solve_1_alex
	.local	_ZL38benchmark_uniq_3benchmark_solve_1_alex
	.comm	_ZL38benchmark_uniq_3benchmark_solve_1_alex,8,8
	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"benchmark_solve_1_alex"
	.size	.L.str.4, 23

	.type	_ZL33benchmark_uniq_4benchmark_solve_2,@object # @_ZL33benchmark_uniq_4benchmark_solve_2
	.local	_ZL33benchmark_uniq_4benchmark_solve_2
	.comm	_ZL33benchmark_uniq_4benchmark_solve_2,8,8
	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"benchmark_solve_2"
	.size	.L.str.6, 18

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"stoi"
	.size	.L.str.7, 5

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"input.txt"
	.size	.L.str.8, 10

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Part 1: "
	.size	.L.str.9, 9

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"basic_string::_M_create"
	.size	.L.str.11, 24

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Part 1 (Alex): "
	.size	.L.str.14, 16

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Part 2: "
	.size	.L.str.15, 9

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"vector::_M_realloc_insert"
	.size	.L.str.16, 26

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
	.addrsig_sym _ZL22benchmark_solve_1_alexRN9benchmark5StateE
	.addrsig_sym _ZL17benchmark_solve_2RN9benchmark5StateE
	.addrsig_sym _GLOBAL__sub_I_solution.cc
	.addrsig_sym _Unwind_Resume
	.addrsig_sym __stack_chk_fail
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _ZSt4cout
