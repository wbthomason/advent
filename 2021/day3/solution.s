	.text
	.file	"solution.cc"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function _Z7solve_1RKSt6vectorIjSaIjEE
.LCPI0_0:
	.long	1                               # 0x1
.LCPI0_1:
	.long	2                               # 0x2
.LCPI0_2:
	.long	4                               # 0x4
.LCPI0_3:
	.long	8                               # 0x8
.LCPI0_4:
	.long	16                              # 0x10
.LCPI0_5:
	.long	32                              # 0x20
.LCPI0_6:
	.long	64                              # 0x40
.LCPI0_7:
	.long	256                             # 0x100
.LCPI0_8:
	.long	512                             # 0x200
.LCPI0_9:
	.long	1024                            # 0x400
.LCPI0_10:
	.long	2048                            # 0x800
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_11:
	.long	2                               # 0x2
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI0_12:
	.long	0                               # 0x0
	.long	2                               # 0x2
	.zero	4
	.zero	4
.LCPI0_13:
	.long	4                               # 0x4
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI0_14:
	.long	0                               # 0x0
	.long	4                               # 0x4
	.zero	4
	.zero	4
.LCPI0_15:
	.long	8                               # 0x8
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI0_16:
	.long	0                               # 0x0
	.long	8                               # 0x8
	.zero	4
	.zero	4
.LCPI0_17:
	.long	16                              # 0x10
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI0_18:
	.long	0                               # 0x0
	.long	16                              # 0x10
	.zero	4
	.zero	4
.LCPI0_19:
	.long	32                              # 0x20
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI0_20:
	.long	0                               # 0x0
	.long	32                              # 0x20
	.zero	4
	.zero	4
.LCPI0_21:
	.long	64                              # 0x40
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI0_22:
	.long	0                               # 0x0
	.long	64                              # 0x40
	.zero	4
	.zero	4
.LCPI0_23:
	.long	128                             # 0x80
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI0_24:
	.long	0                               # 0x0
	.long	128                             # 0x80
	.zero	4
	.zero	4
.LCPI0_25:
	.long	256                             # 0x100
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI0_26:
	.long	0                               # 0x0
	.long	256                             # 0x100
	.zero	4
	.zero	4
.LCPI0_27:
	.long	512                             # 0x200
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI0_28:
	.long	0                               # 0x0
	.long	512                             # 0x200
	.zero	4
	.zero	4
.LCPI0_29:
	.long	1024                            # 0x400
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI0_30:
	.long	0                               # 0x0
	.long	1024                            # 0x400
	.zero	4
	.zero	4
.LCPI0_31:
	.long	2048                            # 0x800
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI0_32:
	.long	0                               # 0x0
	.long	2048                            # 0x800
	.zero	4
	.zero	4
	.text
	.globl	_Z7solve_1RKSt6vectorIjSaIjEE
	.p2align	4, 0x90
	.type	_Z7solve_1RKSt6vectorIjSaIjEE,@function
_Z7solve_1RKSt6vectorIjSaIjEE:          # @_Z7solve_1RKSt6vectorIjSaIjEE
	.cfi_startproc
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
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	(%rdi), %r8
	movq	8(%rdi), %rdx
	movl	$0, %ecx
	movl	$0, %eax
	movl	$0, %ebp
	movl	$0, %r9d
	movl	$0, %r13d
	movl	$0, %r12d
	movl	$0, %r15d
	movl	$0, %r14d
	movl	$0, %r10d
	movl	$0, -124(%rsp)                  # 4-byte Folded Spill
	movl	$0, -120(%rsp)                  # 4-byte Folded Spill
	movl	$0, %ebx
	movl	$0, %r11d
	movl	$0, -116(%rsp)                  # 4-byte Folded Spill
	movl	$0, -112(%rsp)                  # 4-byte Folded Spill
	movl	$0, -108(%rsp)                  # 4-byte Folded Spill
	movl	$0, -104(%rsp)                  # 4-byte Folded Spill
	movl	$0, -100(%rsp)                  # 4-byte Folded Spill
	movl	$0, -80(%rsp)                   # 4-byte Folded Spill
	movl	$0, -48(%rsp)                   # 4-byte Folded Spill
	movl	$0, -16(%rsp)                   # 4-byte Folded Spill
	movl	$0, 16(%rsp)                    # 4-byte Folded Spill
	movl	$0, 48(%rsp)                    # 4-byte Folded Spill
	movl	$0, %edi
	cmpq	%rdx, %r8
	je	.LBB0_8
# %bb.1:
	movq	%rdx, %rax
	subq	%r8, %rax
	addq	$-4, %rax
	xorl	%ecx, %ecx
	cmpq	$28, %rax
	jae	.LBB0_3
# %bb.2:
	xorl	%eax, %eax
	xorl	%ebp, %ebp
	xorl	%r9d, %r9d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
	xorl	%r10d, %r10d
	movl	$0, -124(%rsp)                  # 4-byte Folded Spill
	movl	$0, -120(%rsp)                  # 4-byte Folded Spill
	xorl	%ebx, %ebx
	xorl	%r11d, %r11d
	movl	$0, -116(%rsp)                  # 4-byte Folded Spill
	movl	$0, -112(%rsp)                  # 4-byte Folded Spill
	movq	%r8, %rsi
	movl	$0, -108(%rsp)                  # 4-byte Folded Spill
	movl	$0, -104(%rsp)                  # 4-byte Folded Spill
	movl	$0, -100(%rsp)                  # 4-byte Folded Spill
	movl	$0, -80(%rsp)                   # 4-byte Folded Spill
	movl	$0, -48(%rsp)                   # 4-byte Folded Spill
	movl	$0, -16(%rsp)                   # 4-byte Folded Spill
	movl	$0, 16(%rsp)                    # 4-byte Folded Spill
	movl	$0, 48(%rsp)                    # 4-byte Folded Spill
	xorl	%edi, %edi
	jmp	.LBB0_6
.LBB0_3:
	shrq	$2, %rax
	incq	%rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	%rax, %rcx
	andq	$-8, %rcx
	leaq	(%r8,%rcx,4), %rsi
	vpxord	%xmm27, %xmm27, %xmm27
	vpbroadcastd	.LCPI0_0(%rip), %ymm20  # ymm20 = [1,1,1,1,1,1,1,1]
	vbroadcastss	.LCPI0_1(%rip), %ymm0   # ymm0 = [2,2,2,2,2,2,2,2]
	vmovups	%ymm0, 48(%rsp)                 # 32-byte Spill
	vbroadcastss	.LCPI0_2(%rip), %ymm0   # ymm0 = [4,4,4,4,4,4,4,4]
	vmovups	%ymm0, 16(%rsp)                 # 32-byte Spill
	vbroadcastss	.LCPI0_3(%rip), %ymm0   # ymm0 = [8,8,8,8,8,8,8,8]
	vmovups	%ymm0, -16(%rsp)                # 32-byte Spill
	vbroadcastss	.LCPI0_4(%rip), %ymm0   # ymm0 = [16,16,16,16,16,16,16,16]
	vmovups	%ymm0, -48(%rsp)                # 32-byte Spill
	vbroadcastss	.LCPI0_5(%rip), %ymm0   # ymm0 = [32,32,32,32,32,32,32,32]
	vmovups	%ymm0, -80(%rsp)                # 32-byte Spill
	vpbroadcastd	.LCPI0_6(%rip), %ymm0   # ymm0 = [64,64,64,64,64,64,64,64]
	vpbroadcastd	.LCPI0_7(%rip), %ymm28  # ymm28 = [256,256,256,256,256,256,256,256]
	vpbroadcastd	.LCPI0_8(%rip), %ymm29  # ymm29 = [512,512,512,512,512,512,512,512]
	vpbroadcastd	.LCPI0_9(%rip), %ymm30  # ymm30 = [1024,1024,1024,1024,1024,1024,1024,1024]
	vpbroadcastd	.LCPI0_10(%rip), %ymm31 # ymm31 = [2048,2048,2048,2048,2048,2048,2048,2048]
	xorl	%eax, %eax
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
	vpxord	%xmm17, %xmm17, %xmm17
	vpxord	%xmm18, %xmm18, %xmm18
	vpxord	%xmm19, %xmm19, %xmm19
	vpxord	%xmm25, %xmm25, %xmm25
	vpxord	%xmm21, %xmm21, %xmm21
	vpxord	%xmm22, %xmm22, %xmm22
	vpxord	%xmm23, %xmm23, %xmm23
	.p2align	4, 0x90
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	vmovdqu64	(%r8,%rax,4), %ymm24
	vpandd	%ymm20, %ymm24, %ymm26
	vpaddd	%ymm26, %ymm27, %ymm27
	vpxord	%ymm20, %ymm26, %ymm26
	vpaddd	%ymm26, %ymm12, %ymm12
	vpandd	48(%rsp), %ymm24, %ymm26        # 32-byte Folded Reload
	vpsrld	$1, %ymm26, %ymm26
	vpaddd	%ymm26, %ymm1, %ymm1
	vpxord	%ymm20, %ymm26, %ymm26
	vpaddd	%ymm26, %ymm13, %ymm13
	vpandd	16(%rsp), %ymm24, %ymm26        # 32-byte Folded Reload
	vpsrld	$2, %ymm26, %ymm26
	vpaddd	%ymm26, %ymm2, %ymm2
	vpxord	%ymm20, %ymm26, %ymm26
	vpaddd	%ymm26, %ymm14, %ymm14
	vpandd	-16(%rsp), %ymm24, %ymm26       # 32-byte Folded Reload
	vpsrld	$3, %ymm26, %ymm26
	vpaddd	%ymm26, %ymm3, %ymm3
	vpxord	%ymm20, %ymm26, %ymm26
	vpaddd	%ymm26, %ymm15, %ymm15
	vpandd	-48(%rsp), %ymm24, %ymm26       # 32-byte Folded Reload
	vpsrld	$4, %ymm26, %ymm26
	vpaddd	%ymm26, %ymm4, %ymm4
	vpxord	%ymm20, %ymm26, %ymm26
	vpaddd	%ymm26, %ymm16, %ymm16
	vpandd	-80(%rsp), %ymm24, %ymm26       # 32-byte Folded Reload
	vpsrld	$5, %ymm26, %ymm26
	vpaddd	%ymm26, %ymm5, %ymm5
	vpxord	%ymm20, %ymm26, %ymm26
	vpaddd	%ymm26, %ymm17, %ymm17
	vpandd	%ymm0, %ymm24, %ymm26
	vpsrld	$6, %ymm26, %ymm26
	vpaddd	%ymm26, %ymm6, %ymm6
	vpxord	%ymm20, %ymm26, %ymm26
	vpaddd	%ymm26, %ymm18, %ymm18
	vpsrld	$7, %ymm24, %ymm26
	vpandd	%ymm20, %ymm26, %ymm26
	vpaddd	%ymm26, %ymm7, %ymm7
	vpxord	%ymm20, %ymm26, %ymm26
	vpaddd	%ymm26, %ymm19, %ymm19
	vpandd	%ymm28, %ymm24, %ymm26
	vpsrld	$8, %ymm26, %ymm26
	vpaddd	%ymm26, %ymm8, %ymm8
	vpxord	%ymm20, %ymm26, %ymm26
	vpaddd	%ymm26, %ymm25, %ymm25
	vpandd	%ymm29, %ymm24, %ymm26
	vpsrld	$9, %ymm26, %ymm26
	vpaddd	%ymm26, %ymm9, %ymm9
	vpxord	%ymm20, %ymm26, %ymm26
	vpaddd	%ymm26, %ymm21, %ymm21
	vpandd	%ymm30, %ymm24, %ymm26
	vpsrld	$10, %ymm26, %ymm26
	vpaddd	%ymm26, %ymm10, %ymm10
	vpxord	%ymm20, %ymm26, %ymm26
	vpaddd	%ymm26, %ymm22, %ymm22
	vpandd	%ymm31, %ymm24, %ymm24
	vpsrld	$11, %ymm24, %ymm24
	vpaddd	%ymm24, %ymm11, %ymm11
	vpxord	%ymm20, %ymm24, %ymm24
	vpaddd	%ymm24, %ymm23, %ymm23
	addq	$8, %rax
	cmpq	%rax, %rcx
	jne	.LBB0_4
# %bb.5:
	vextracti32x4	$1, %ymm23, %xmm0
	vpaddd	%xmm0, %xmm23, %xmm20
	vpshufd	$238, %xmm20, %xmm0             # xmm0 = xmm20[2,3,2,3]
	vpaddd	%xmm0, %xmm20, %xmm20
	vpshufd	$85, %xmm20, %xmm0              # xmm0 = xmm20[1,1,1,1]
	vpaddd	%xmm0, %xmm20, %xmm0
	vmovd	%xmm0, %edi
	vextracti32x4	$1, %ymm22, %xmm0
	vpaddd	%xmm0, %xmm22, %xmm20
	vpshufd	$238, %xmm20, %xmm0             # xmm0 = xmm20[2,3,2,3]
	vpaddd	%xmm0, %xmm20, %xmm20
	vpshufd	$85, %xmm20, %xmm0              # xmm0 = xmm20[1,1,1,1]
	vpaddd	%xmm0, %xmm20, %xmm0
	vmovd	%xmm0, 48(%rsp)                 # 4-byte Folded Spill
	vextracti32x4	$1, %ymm21, %xmm0
	vpaddd	%xmm0, %xmm21, %xmm20
	vpshufd	$238, %xmm20, %xmm0             # xmm0 = xmm20[2,3,2,3]
	vpaddd	%xmm0, %xmm20, %xmm20
	vpshufd	$85, %xmm20, %xmm0              # xmm0 = xmm20[1,1,1,1]
	vpaddd	%xmm0, %xmm20, %xmm0
	vmovd	%xmm0, 16(%rsp)                 # 4-byte Folded Spill
	vextracti32x4	$1, %ymm25, %xmm0
	vpaddd	%xmm0, %xmm25, %xmm20
	vpshufd	$238, %xmm20, %xmm0             # xmm0 = xmm20[2,3,2,3]
	vpaddd	%xmm0, %xmm20, %xmm20
	vpshufd	$85, %xmm20, %xmm0              # xmm0 = xmm20[1,1,1,1]
	vpaddd	%xmm0, %xmm20, %xmm0
	vmovd	%xmm0, -16(%rsp)                # 4-byte Folded Spill
	vextracti32x4	$1, %ymm19, %xmm0
	vpaddd	%xmm0, %xmm19, %xmm19
	vpshufd	$238, %xmm19, %xmm0             # xmm0 = xmm19[2,3,2,3]
	vpaddd	%xmm0, %xmm19, %xmm19
	vpshufd	$85, %xmm19, %xmm0              # xmm0 = xmm19[1,1,1,1]
	vpaddd	%xmm0, %xmm19, %xmm0
	vmovd	%xmm0, -48(%rsp)                # 4-byte Folded Spill
	vextracti32x4	$1, %ymm18, %xmm0
	vpaddd	%xmm0, %xmm18, %xmm18
	vpshufd	$238, %xmm18, %xmm0             # xmm0 = xmm18[2,3,2,3]
	vpaddd	%xmm0, %xmm18, %xmm18
	vpshufd	$85, %xmm18, %xmm0              # xmm0 = xmm18[1,1,1,1]
	vpaddd	%xmm0, %xmm18, %xmm0
	vmovd	%xmm0, -80(%rsp)                # 4-byte Folded Spill
	vextracti32x4	$1, %ymm17, %xmm0
	vpaddd	%xmm0, %xmm17, %xmm17
	vpshufd	$238, %xmm17, %xmm0             # xmm0 = xmm17[2,3,2,3]
	vpaddd	%xmm0, %xmm17, %xmm17
	vpshufd	$85, %xmm17, %xmm0              # xmm0 = xmm17[1,1,1,1]
	vpaddd	%xmm0, %xmm17, %xmm0
	vmovd	%xmm0, -100(%rsp)               # 4-byte Folded Spill
	vextracti32x4	$1, %ymm16, %xmm0
	vpaddd	%xmm0, %xmm16, %xmm16
	vpshufd	$238, %xmm16, %xmm0             # xmm0 = xmm16[2,3,2,3]
	vpaddd	%xmm0, %xmm16, %xmm16
	vpshufd	$85, %xmm16, %xmm0              # xmm0 = xmm16[1,1,1,1]
	vpaddd	%xmm0, %xmm16, %xmm0
	vmovd	%xmm0, -104(%rsp)               # 4-byte Folded Spill
	vextracti128	$1, %ymm15, %xmm0
	vpaddd	%xmm0, %xmm15, %xmm15
	vpshufd	$238, %xmm15, %xmm0             # xmm0 = xmm15[2,3,2,3]
	vpaddd	%xmm0, %xmm15, %xmm15
	vpshufd	$85, %xmm15, %xmm0              # xmm0 = xmm15[1,1,1,1]
	vpaddd	%xmm0, %xmm15, %xmm0
	vmovd	%xmm0, -108(%rsp)               # 4-byte Folded Spill
	vextracti128	$1, %ymm14, %xmm0
	vpaddd	%xmm0, %xmm14, %xmm14
	vpshufd	$238, %xmm14, %xmm0             # xmm0 = xmm14[2,3,2,3]
	vpaddd	%xmm0, %xmm14, %xmm14
	vpshufd	$85, %xmm14, %xmm0              # xmm0 = xmm14[1,1,1,1]
	vpaddd	%xmm0, %xmm14, %xmm0
	vmovd	%xmm0, -112(%rsp)               # 4-byte Folded Spill
	vextracti128	$1, %ymm13, %xmm0
	vpaddd	%xmm0, %xmm13, %xmm13
	vpshufd	$238, %xmm13, %xmm0             # xmm0 = xmm13[2,3,2,3]
	vpaddd	%xmm0, %xmm13, %xmm13
	vpshufd	$85, %xmm13, %xmm0              # xmm0 = xmm13[1,1,1,1]
	vpaddd	%xmm0, %xmm13, %xmm0
	vmovd	%xmm0, -116(%rsp)               # 4-byte Folded Spill
	vextracti128	$1, %ymm12, %xmm0
	vpaddd	%xmm0, %xmm12, %xmm12
	vpshufd	$238, %xmm12, %xmm0             # xmm0 = xmm12[2,3,2,3]
	vpaddd	%xmm0, %xmm12, %xmm12
	vpshufd	$85, %xmm12, %xmm0              # xmm0 = xmm12[1,1,1,1]
	vpaddd	%xmm0, %xmm12, %xmm0
	vmovd	%xmm0, %r11d
	vextracti128	$1, %ymm11, %xmm0
	vpaddd	%xmm0, %xmm11, %xmm11
	vpshufd	$238, %xmm11, %xmm0             # xmm0 = xmm11[2,3,2,3]
	vpaddd	%xmm0, %xmm11, %xmm11
	vpshufd	$85, %xmm11, %xmm0              # xmm0 = xmm11[1,1,1,1]
	vpaddd	%xmm0, %xmm11, %xmm0
	vmovd	%xmm0, %ebx
	vextracti128	$1, %ymm10, %xmm0
	vpaddd	%xmm0, %xmm10, %xmm10
	vpshufd	$238, %xmm10, %xmm0             # xmm0 = xmm10[2,3,2,3]
	vpaddd	%xmm0, %xmm10, %xmm10
	vpshufd	$85, %xmm10, %xmm0              # xmm0 = xmm10[1,1,1,1]
	vpaddd	%xmm0, %xmm10, %xmm10
	vextracti128	$1, %ymm9, %xmm0
	vpaddd	%xmm0, %xmm9, %xmm9
	vpshufd	$238, %xmm9, %xmm0              # xmm0 = xmm9[2,3,2,3]
	vpaddd	%xmm0, %xmm9, %xmm9
	vpshufd	$85, %xmm9, %xmm0               # xmm0 = xmm9[1,1,1,1]
	vpaddd	%xmm0, %xmm9, %xmm9
	vextracti128	$1, %ymm8, %xmm0
	vpaddd	%xmm0, %xmm8, %xmm8
	vpshufd	$238, %xmm8, %xmm0              # xmm0 = xmm8[2,3,2,3]
	vpaddd	%xmm0, %xmm8, %xmm8
	vpshufd	$85, %xmm8, %xmm0               # xmm0 = xmm8[1,1,1,1]
	vpaddd	%xmm0, %xmm8, %xmm8
	vextracti128	$1, %ymm7, %xmm0
	vpaddd	%xmm0, %xmm7, %xmm0
	vpshufd	$238, %xmm0, %xmm7              # xmm7 = xmm0[2,3,2,3]
	vpaddd	%xmm7, %xmm0, %xmm0
	vpshufd	$85, %xmm0, %xmm7               # xmm7 = xmm0[1,1,1,1]
	vpaddd	%xmm7, %xmm0, %xmm11
	vextracti128	$1, %ymm6, %xmm7
	vpaddd	%xmm7, %xmm6, %xmm6
	vpshufd	$238, %xmm6, %xmm7              # xmm7 = xmm6[2,3,2,3]
	vpaddd	%xmm7, %xmm6, %xmm6
	vpshufd	$85, %xmm6, %xmm7               # xmm7 = xmm6[1,1,1,1]
	vpaddd	%xmm7, %xmm6, %xmm6
	vextracti128	$1, %ymm5, %xmm7
	vpaddd	%xmm7, %xmm5, %xmm5
	vpshufd	$238, %xmm5, %xmm7              # xmm7 = xmm5[2,3,2,3]
	vpaddd	%xmm7, %xmm5, %xmm5
	vpshufd	$85, %xmm5, %xmm7               # xmm7 = xmm5[1,1,1,1]
	vpaddd	%xmm7, %xmm5, %xmm5
	vextracti128	$1, %ymm4, %xmm7
	vpaddd	%xmm7, %xmm4, %xmm4
	vpshufd	$238, %xmm4, %xmm7              # xmm7 = xmm4[2,3,2,3]
	vpaddd	%xmm7, %xmm4, %xmm4
	vpshufd	$85, %xmm4, %xmm7               # xmm7 = xmm4[1,1,1,1]
	vpaddd	%xmm7, %xmm4, %xmm4
	vextracti128	$1, %ymm3, %xmm7
	vpaddd	%xmm7, %xmm3, %xmm3
	vpshufd	$238, %xmm3, %xmm7              # xmm7 = xmm3[2,3,2,3]
	vpaddd	%xmm7, %xmm3, %xmm3
	vpshufd	$85, %xmm3, %xmm7               # xmm7 = xmm3[1,1,1,1]
	vpaddd	%xmm7, %xmm3, %xmm3
	vextracti128	$1, %ymm2, %xmm7
	vpaddd	%xmm7, %xmm2, %xmm2
	vpshufd	$238, %xmm2, %xmm7              # xmm7 = xmm2[2,3,2,3]
	vpaddd	%xmm7, %xmm2, %xmm2
	vpshufd	$85, %xmm2, %xmm7               # xmm7 = xmm2[1,1,1,1]
	vpaddd	%xmm7, %xmm2, %xmm2
	vextracti128	$1, %ymm1, %xmm7
	vpaddd	%xmm7, %xmm1, %xmm1
	vpshufd	$238, %xmm1, %xmm7              # xmm7 = xmm1[2,3,2,3]
	vpaddd	%xmm7, %xmm1, %xmm1
	vpshufd	$85, %xmm1, %xmm7               # xmm7 = xmm1[1,1,1,1]
	vpaddd	%xmm7, %xmm1, %xmm1
	vextracti32x4	$1, %ymm27, %xmm7
	vpaddd	%xmm7, %xmm27, %xmm7
	vpshufd	$238, %xmm7, %xmm0              # xmm0 = xmm7[2,3,2,3]
	vpaddd	%xmm0, %xmm7, %xmm0
	vpshufd	$85, %xmm0, %xmm7               # xmm7 = xmm0[1,1,1,1]
	vpaddd	%xmm7, %xmm0, %xmm0
	vmovd	%xmm10, -120(%rsp)              # 4-byte Folded Spill
	vmovd	%xmm9, -124(%rsp)               # 4-byte Folded Spill
	vmovd	%xmm8, %r10d
	vmovd	%xmm11, %r14d
	vmovd	%xmm6, %r15d
	vmovd	%xmm5, %r12d
	vmovd	%xmm4, %r13d
	vmovd	%xmm3, %r9d
	vmovd	%xmm2, %ebp
	vmovd	%xmm1, %eax
	movq	%rcx, %r8
	vmovd	%xmm0, %ecx
	cmpq	%r8, -88(%rsp)                  # 8-byte Folded Reload
	je	.LBB0_8
.LBB0_6:
	movq	%rdx, -96(%rsp)                 # 8-byte Spill
	.p2align	4, 0x90
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movl	(%rsi), %edx
	movq	%rsi, %r8
	movl	%edx, %esi
	andl	$1, %esi
	addl	%esi, %ecx
	xorl	$1, %esi
	addl	%esi, %r11d
	movl	%edx, %esi
	andl	$2, %esi
	shrl	%esi
	addl	%esi, %eax
	xorl	$1, %esi
	addl	%esi, -116(%rsp)                # 4-byte Folded Spill
	movl	%edx, %esi
	andl	$4, %esi
	shrl	$2, %esi
	addl	%esi, %ebp
	xorl	$1, %esi
	addl	%esi, -112(%rsp)                # 4-byte Folded Spill
	movl	%edx, %esi
	andl	$8, %esi
	shrl	$3, %esi
	addl	%esi, %r9d
	xorl	$1, %esi
	addl	%esi, -108(%rsp)                # 4-byte Folded Spill
	movl	%edx, %esi
	andl	$16, %esi
	shrl	$4, %esi
	addl	%esi, %r13d
	xorl	$1, %esi
	addl	%esi, -104(%rsp)                # 4-byte Folded Spill
	movl	%edx, %esi
	andl	$32, %esi
	shrl	$5, %esi
	addl	%esi, %r12d
	xorl	$1, %esi
	addl	%esi, -100(%rsp)                # 4-byte Folded Spill
	movl	%edx, %esi
	andl	$64, %esi
	shrl	$6, %esi
	addl	%esi, %r15d
	xorl	$1, %esi
	addl	%esi, -80(%rsp)                 # 4-byte Folded Spill
	movl	%edx, %esi
	shrl	$7, %esi
	andl	$1, %esi
	addl	%esi, %r14d
	xorl	$1, %esi
	addl	%esi, -48(%rsp)                 # 4-byte Folded Spill
	movl	%edx, %esi
	shrl	$8, %esi
	andl	$1, %esi
	addl	%esi, %r10d
	xorl	$1, %esi
	addl	%esi, -16(%rsp)                 # 4-byte Folded Spill
	movl	%edx, %esi
	shrl	$9, %esi
	andl	$1, %esi
	addl	%esi, -124(%rsp)                # 4-byte Folded Spill
	xorl	$1, %esi
	addl	%esi, 16(%rsp)                  # 4-byte Folded Spill
	movl	%edx, %esi
	shrl	$10, %esi
	andl	$1, %esi
	addl	%esi, -120(%rsp)                # 4-byte Folded Spill
	xorl	$1, %esi
	addl	%esi, 48(%rsp)                  # 4-byte Folded Spill
	movq	%r8, %rsi
	shrl	$11, %edx
	andl	$1, %edx
	addl	%edx, %ebx
	xorl	$1, %edx
	addl	%edx, %edi
	movq	-96(%rsp), %rdx                 # 8-byte Reload
	addq	$4, %rsi
	cmpq	%rdx, %rsi
	jne	.LBB0_7
.LBB0_8:
	cmpl	%r11d, %ecx
	seta	%cl
	movl	%ecx, -96(%rsp)                 # 4-byte Spill
	setbe	%r11b
	cmpl	-116(%rsp), %eax                # 4-byte Folded Reload
	movl	$255, %eax
	movl	%ebx, %edx
	movl	$0, %r8d
	cmoval	%eax, %r8d
	cmpl	-112(%rsp), %ebp                # 4-byte Folded Reload
	movl	$0, %esi
	cmoval	%eax, %esi
	cmpl	-108(%rsp), %r9d                # 4-byte Folded Reload
	movl	$0, %ebp
	cmoval	%eax, %ebp
	cmpl	-104(%rsp), %r13d               # 4-byte Folded Reload
	movl	$0, %r13d
	cmoval	%eax, %r13d
	cmpl	-100(%rsp), %r12d               # 4-byte Folded Reload
	movl	$0, %r12d
	cmoval	%eax, %r12d
	cmpl	-80(%rsp), %r15d                # 4-byte Folded Reload
	movl	$0, %r15d
	cmoval	%eax, %r15d
	cmpl	-48(%rsp), %r14d                # 4-byte Folded Reload
	movl	$0, %r14d
	cmoval	%eax, %r14d
	cmpl	-16(%rsp), %r10d                # 4-byte Folded Reload
	movl	$0, %r10d
	cmoval	%eax, %r10d
	movl	-124(%rsp), %ecx                # 4-byte Reload
	cmpl	16(%rsp), %ecx                  # 4-byte Folded Reload
	movl	$0, %ecx
	cmoval	%eax, %ecx
	movl	-120(%rsp), %ebx                # 4-byte Reload
	cmpl	48(%rsp), %ebx                  # 4-byte Folded Reload
	movl	$0, %ebx
	cmoval	%eax, %ebx
	cmpl	%edi, %edx
	movb	$-3, %dl
	kmovd	%edx, %k0
	kmovd	%r11d, %k1
	movl	-96(%rsp), %edx                 # 4-byte Reload
	kmovd	%edx, %k2
	kmovd	%r8d, %k3
	kmovd	%esi, %k4
	kmovd	%ebp, %k5
	kmovd	%r13d, %k6
	kmovd	%r12d, %k7
	kandw	%k0, %k1, %k0
	kmovd	%r15d, %k1
	kshiftlb	$7, %k2, %k2
	kshiftrb	$6, %k2, %k2
	korw	%k2, %k0, %k0
	kmovd	%r14d, %k2
	vmovdqa	.LCPI0_11(%rip), %xmm8          # xmm8 = [2,0,0,0]
	vmovdqa32	.LCPI0_12(%rip), %xmm8 {%k3}
	kmovd	%r10d, %k3
	vmovdqa	.LCPI0_13(%rip), %xmm1          # xmm1 = [4,0,0,0]
	vmovdqa32	.LCPI0_14(%rip), %xmm1 {%k4}
	kmovd	%ecx, %k4
	vmovdqa	.LCPI0_15(%rip), %xmm2          # xmm2 = [8,0,0,0]
	vmovdqa32	.LCPI0_16(%rip), %xmm2 {%k5}
	kmovd	%ebx, %k5
	movl	$0, %ecx
	cmoval	%eax, %ecx
	vmovdqa	.LCPI0_17(%rip), %xmm3          # xmm3 = [16,0,0,0]
	vmovdqa32	.LCPI0_18(%rip), %xmm3 {%k6}
	vmovdqa	.LCPI0_19(%rip), %xmm4          # xmm4 = [32,0,0,0]
	vmovdqa32	.LCPI0_20(%rip), %xmm4 {%k7}
	vmovdqa	.LCPI0_21(%rip), %xmm5          # xmm5 = [64,0,0,0]
	vmovdqa32	.LCPI0_22(%rip), %xmm5 {%k1}
	vmovdqa	.LCPI0_23(%rip), %xmm6          # xmm6 = [128,0,0,0]
	vmovdqa32	.LCPI0_24(%rip), %xmm6 {%k2}
	vmovdqa	.LCPI0_25(%rip), %xmm7          # xmm7 = [256,0,0,0]
	vmovdqa32	.LCPI0_26(%rip), %xmm7 {%k3}
	vpmovm2d	%k0, %xmm0
	vpsrld	$31, %xmm0, %xmm0
	vpor	%xmm0, %xmm8, %xmm0
	vpternlogd	$254, %xmm0, %xmm1, %xmm2
	vpternlogd	$254, %xmm2, %xmm3, %xmm4
	vpternlogd	$254, %xmm4, %xmm5, %xmm6
	vmovdqa	.LCPI0_27(%rip), %xmm0          # xmm0 = [512,0,0,0]
	vmovdqa32	.LCPI0_28(%rip), %xmm0 {%k4}
	vmovdqa	.LCPI0_29(%rip), %xmm1          # xmm1 = [1024,0,0,0]
	vmovdqa32	.LCPI0_30(%rip), %xmm1 {%k5}
	kmovd	%ecx, %k1
	vmovdqa	.LCPI0_31(%rip), %xmm2          # xmm2 = [2048,0,0,0]
	vmovdqa32	.LCPI0_32(%rip), %xmm2 {%k1}
	vpternlogd	$254, %xmm6, %xmm7, %xmm0
	vpternlogd	$254, %xmm0, %xmm1, %xmm2
	vpshufd	$85, %xmm2, %xmm0               # xmm0 = xmm2[1,1,1,1]
	vpmulld	%xmm0, %xmm2, %xmm0
	vmovd	%xmm0, %eax
	addq	$88, %rsp
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
.Lfunc_end0:
	.size	_Z7solve_1RKSt6vectorIjSaIjEE, .Lfunc_end0-_Z7solve_1RKSt6vectorIjSaIjEE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function _Z12solve_1_binsRKSt6vectorISt5arrayIbLm12EESaIS1_EE
.LCPI1_0:
	.long	2                               # 0x2
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI1_1:
	.long	0                               # 0x0
	.long	2                               # 0x2
	.zero	4
	.zero	4
.LCPI1_2:
	.long	4                               # 0x4
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI1_3:
	.long	0                               # 0x0
	.long	4                               # 0x4
	.zero	4
	.zero	4
.LCPI1_4:
	.long	8                               # 0x8
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI1_5:
	.long	0                               # 0x0
	.long	8                               # 0x8
	.zero	4
	.zero	4
.LCPI1_6:
	.long	16                              # 0x10
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI1_7:
	.long	0                               # 0x0
	.long	16                              # 0x10
	.zero	4
	.zero	4
.LCPI1_8:
	.long	32                              # 0x20
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI1_9:
	.long	0                               # 0x0
	.long	32                              # 0x20
	.zero	4
	.zero	4
.LCPI1_10:
	.long	64                              # 0x40
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI1_11:
	.long	0                               # 0x0
	.long	64                              # 0x40
	.zero	4
	.zero	4
.LCPI1_12:
	.long	128                             # 0x80
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI1_13:
	.long	0                               # 0x0
	.long	128                             # 0x80
	.zero	4
	.zero	4
.LCPI1_14:
	.long	256                             # 0x100
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI1_15:
	.long	0                               # 0x0
	.long	256                             # 0x100
	.zero	4
	.zero	4
.LCPI1_16:
	.long	512                             # 0x200
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI1_17:
	.long	0                               # 0x0
	.long	512                             # 0x200
	.zero	4
	.zero	4
.LCPI1_18:
	.long	1024                            # 0x400
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI1_19:
	.long	0                               # 0x0
	.long	1024                            # 0x400
	.zero	4
	.zero	4
.LCPI1_20:
	.long	2048                            # 0x800
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI1_21:
	.long	0                               # 0x0
	.long	2048                            # 0x800
	.zero	4
	.zero	4
	.text
	.globl	_Z12solve_1_binsRKSt6vectorISt5arrayIbLm12EESaIS1_EE
	.p2align	4, 0x90
	.type	_Z12solve_1_binsRKSt6vectorISt5arrayIbLm12EESaIS1_EE,@function
_Z12solve_1_binsRKSt6vectorISt5arrayIbLm12EESaIS1_EE: # @_Z12solve_1_binsRKSt6vectorISt5arrayIbLm12EESaIS1_EE
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %rax
	movq	8(%rdi), %rdx
	cmpq	%rdx, %rax
	je	.LBB1_1
# %bb.4:
	vpxor	%xmm1, %xmm1, %xmm1
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rax, %rcx
	.p2align	4, 0x90
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	vpmovzxbd	(%rcx), %ymm2           # ymm2 = mem[0],zero,zero,zero,mem[1],zero,zero,zero,mem[2],zero,zero,zero,mem[3],zero,zero,zero,mem[4],zero,zero,zero,mem[5],zero,zero,zero,mem[6],zero,zero,zero,mem[7],zero,zero,zero
	vpaddd	%ymm2, %ymm0, %ymm0
	vpmovzxbd	8(%rcx), %xmm2          # xmm2 = mem[0],zero,zero,zero,mem[1],zero,zero,zero,mem[2],zero,zero,zero,mem[3],zero,zero,zero
	vpaddd	%xmm2, %xmm1, %xmm1
	addq	$12, %rcx
	cmpq	%rdx, %rcx
	jne	.LBB1_5
# %bb.2:
	vpextrd	$3, %xmm1, %ecx
	vpextrd	$2, %xmm1, %edi
	vpextrd	$1, %xmm1, %r9d
	vmovd	%xmm1, %r8d
	vextracti128	$1, %ymm0, %xmm1
	vpmovzxdq	%xmm1, %ymm1            # ymm1 = xmm1[0],zero,xmm1[1],zero,xmm1[2],zero,xmm1[3],zero
	vpmovzxdq	%xmm0, %ymm0            # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero
	jmp	.LBB1_3
.LBB1_1:
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	vpxor	%xmm1, %xmm1, %xmm1
.LBB1_3:
	subq	%rax, %rdx
	sarq	$2, %rdx
	movabsq	$-6148914691236517205, %rax     # imm = 0xAAAAAAAAAAAAAAAB
	imulq	%rdx, %rax
	shrq	%rax
	cmpq	%rcx, %rax
	setb	%cl
	setae	%dl
	movb	$-3, %sil
	kmovd	%esi, %k0
	kmovd	%edx, %k1
	kandw	%k0, %k1, %k0
	kmovd	%ecx, %k1
	kshiftlb	$7, %k1, %k1
	kshiftrb	$6, %k1, %k1
	korw	%k1, %k0, %k0
	vpmovm2d	%k0, %xmm2
	vpsrld	$31, %xmm2, %xmm2
	cmpq	%rdi, %rax
	sbbl	%ecx, %ecx
	kmovd	%ecx, %k1
	vmovdqa	.LCPI1_0(%rip), %xmm3           # xmm3 = [2,0,0,0]
	vmovdqa32	.LCPI1_1(%rip), %xmm3 {%k1}
	cmpq	%r9, %rax
	sbbl	%ecx, %ecx
	kmovd	%ecx, %k1
	vmovdqa	.LCPI1_2(%rip), %xmm4           # xmm4 = [4,0,0,0]
	vmovdqa32	.LCPI1_3(%rip), %xmm4 {%k1}
	cmpq	%r8, %rax
	sbbl	%ecx, %ecx
	kmovd	%ecx, %k1
	vmovdqa	.LCPI1_4(%rip), %xmm5           # xmm5 = [8,0,0,0]
	vmovdqa32	.LCPI1_5(%rip), %xmm5 {%k1}
	vpor	%xmm2, %xmm3, %xmm2
	vpternlogd	$254, %xmm2, %xmm4, %xmm5
	vextracti128	$1, %ymm1, %xmm2
	vpextrq	$1, %xmm2, %rcx
	cmpq	%rcx, %rax
	sbbl	%ecx, %ecx
	kmovd	%ecx, %k1
	vmovdqa	.LCPI1_6(%rip), %xmm3           # xmm3 = [16,0,0,0]
	vmovdqa32	.LCPI1_7(%rip), %xmm3 {%k1}
	vmovq	%xmm2, %rcx
	cmpq	%rcx, %rax
	sbbl	%ecx, %ecx
	kmovd	%ecx, %k1
	vmovdqa	.LCPI1_8(%rip), %xmm2           # xmm2 = [32,0,0,0]
	vmovdqa32	.LCPI1_9(%rip), %xmm2 {%k1}
	vpternlogd	$254, %xmm5, %xmm3, %xmm2
	vpextrq	$1, %xmm1, %rcx
	cmpq	%rcx, %rax
	vmovdqa	.LCPI1_10(%rip), %xmm3          # xmm3 = [64,0,0,0]
	sbbl	%ecx, %ecx
	kmovd	%ecx, %k1
	vmovdqa32	.LCPI1_11(%rip), %xmm3 {%k1}
	vmovq	%xmm1, %rcx
	cmpq	%rcx, %rax
	sbbl	%ecx, %ecx
	kmovd	%ecx, %k1
	vmovdqa	.LCPI1_12(%rip), %xmm1          # xmm1 = [128,0,0,0]
	vmovdqa32	.LCPI1_13(%rip), %xmm1 {%k1}
	vpternlogd	$254, %xmm2, %xmm3, %xmm1
	vextracti128	$1, %ymm0, %xmm2
	vpextrq	$1, %xmm2, %rcx
	cmpq	%rcx, %rax
	sbbl	%ecx, %ecx
	kmovd	%ecx, %k1
	vmovdqa	.LCPI1_14(%rip), %xmm3          # xmm3 = [256,0,0,0]
	vmovdqa32	.LCPI1_15(%rip), %xmm3 {%k1}
	vmovq	%xmm2, %rcx
	cmpq	%rcx, %rax
	vmovdqa	.LCPI1_16(%rip), %xmm2          # xmm2 = [512,0,0,0]
	sbbl	%ecx, %ecx
	kmovd	%ecx, %k1
	vmovdqa32	.LCPI1_17(%rip), %xmm2 {%k1}
	vpextrq	$1, %xmm0, %rcx
	cmpq	%rcx, %rax
	sbbl	%ecx, %ecx
	kmovd	%ecx, %k1
	vmovdqa	.LCPI1_18(%rip), %xmm4          # xmm4 = [1024,0,0,0]
	vmovdqa32	.LCPI1_19(%rip), %xmm4 {%k1}
	vmovq	%xmm0, %rcx
	cmpq	%rcx, %rax
	sbbl	%eax, %eax
	kmovd	%eax, %k1
	vmovdqa	.LCPI1_20(%rip), %xmm0          # xmm0 = [2048,0,0,0]
	vmovdqa32	.LCPI1_21(%rip), %xmm0 {%k1}
	vpternlogd	$254, %xmm1, %xmm3, %xmm2
	vpternlogd	$254, %xmm2, %xmm4, %xmm0
	vpshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	vpmulld	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, %eax
	vzeroupper
	retq
.Lfunc_end1:
	.size	_Z12solve_1_binsRKSt6vectorISt5arrayIbLm12EESaIS1_EE, .Lfunc_end1-_Z12solve_1_binsRKSt6vectorISt5arrayIbLm12EESaIS1_EE
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
	movl	$2, %edx
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
	leaq	.L.str.3(%rip), %rdi
	callq	_ZSt20__throw_out_of_rangePKc@PLT
.Ltmp14:
# %bb.30:
.LBB2_31:
.Ltmp15:
	leaq	.L.str.3(%rip), %rdi
	callq	_ZSt24__throw_invalid_argumentPKc@PLT
.Ltmp16:
# %bb.32:
.LBB2_33:
.Ltmp10:
	leaq	.L.str.10(%rip), %rdi
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
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$72, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	%fs:40, %rax
	movq	%rax, 64(%rsp)
	leaq	48(%rsp), %rbp
	movq	%rbp, 32(%rsp)
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
	cmpq	%rbp, %rdi
	je	.LBB3_3
# %bb.2:
	callq	_ZdlPv@PLT
.LBB3_3:
	movb	26(%rbx), %r15b
	movq	16(%rbx), %rbp
.Ltmp24:
	movq	%rbx, %rdi
	callq	_ZN9benchmark5State16StartKeepRunningEv@PLT
.Ltmp25:
# %bb.4:
                                        # implicit-def: $r14d
	testb	%r15b, %r15b
	jne	.LBB3_7
# %bb.5:
                                        # implicit-def: $r14d
	testq	%rbp, %rbp
	je	.LBB3_7
# %bb.6:
	leaq	8(%rsp), %rdi
	callq	_Z7solve_1RKSt6vectorIjSaIjEE
	movl	%eax, %r14d
.LBB3_7:
.Ltmp26:
	movq	%rbx, %rdi
	callq	_ZN9benchmark5State17FinishKeepRunningEv@PLT
.Ltmp27:
# %bb.8:
.Ltmp29:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	.L.str.5(%rip), %rsi
	movl	$8, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp30:
# %bb.9:
.Ltmp31:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	movl	%r14d, %esi
	callq	_ZNSolsEi@PLT
.Ltmp32:
# %bb.10:
	movq	%rax, %rbx
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%rbx), %rbp
	testq	%rbp, %rbp
	je	.LBB3_11
# %bb.15:
	cmpb	$0, 56(%rbp)
	je	.LBB3_17
# %bb.16:
	movb	67(%rbp), %al
	jmp	.LBB3_19
.LBB3_17:
.Ltmp33:
	movq	%rbp, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp34:
# %bb.18:
	movq	(%rbp), %rax
.Ltmp35:
	movq	%rbp, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp36:
.LBB3_19:
.Ltmp37:
	movsbl	%al, %esi
	movq	%rbx, %rdi
	callq	_ZNSo3putEc@PLT
.Ltmp38:
# %bb.20:
.Ltmp39:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp40:
# %bb.21:
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB3_23
# %bb.22:
	callq	_ZdlPv@PLT
.LBB3_23:
	movq	%fs:40, %rax
	cmpq	64(%rsp), %rax
	jne	.LBB3_29
# %bb.24:
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
.LBB3_11:
	.cfi_def_cfa_offset 112
.Ltmp41:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp42:
# %bb.14:
.LBB3_29:
	callq	__stack_chk_fail@PLT
.LBB3_12:
.Ltmp23:
	movq	%rax, %rbx
	movq	32(%rsp), %rdi
	cmpq	%rbp, %rdi
	jne	.LBB3_27
	jmp	.LBB3_28
.LBB3_13:
.Ltmp28:
	jmp	.LBB3_26
.LBB3_25:
.Ltmp43:
.LBB3_26:
	movq	%rax, %rbx
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB3_28
.LBB3_27:
	callq	_ZdlPv@PLT
.LBB3_28:
	movq	%rbx, %rdi
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
	jne	.LBB4_2
# %bb.1:
	callq	_ZN9benchmark22RunSpecifiedBenchmarksEv@PLT
	callq	_ZN9benchmark8ShutdownEv@PLT
	xorl	%eax, %eax
.LBB4_2:
	movq	%fs:40, %rcx
	cmpq	8(%rsp), %rcx
	jne	.LBB4_4
# %bb.3:
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB4_4:
	.cfi_def_cfa_offset 32
	callq	__stack_chk_fail@PLT
.Lfunc_end4:
	.size	main, .Lfunc_end4-main
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_solution.cc
	.type	_GLOBAL__sub_I_solution.cc,@function
_GLOBAL__sub_I_solution.cc:             # @_GLOBAL__sub_I_solution.cc
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
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
.Ltmp44:
	leaq	.L.str(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZN9benchmark8internal9BenchmarkC2EPKc@PLT
.Ltmp45:
# %bb.1:
	movq	_ZTVN9benchmark8internal17FunctionBenchmarkE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	leaq	_ZL17benchmark_solve_1RN9benchmark5StateE(%rip), %rax
	movq	%rax, 192(%rbx)
	movq	%rbx, %rdi
	callq	_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE@PLT
	movq	%rax, _ZL33benchmark_uniq_2benchmark_solve_1(%rip)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB5_2:
	.cfi_def_cfa_offset 32
.Ltmp46:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	_ZdlPv@PLT
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end5:
	.size	_GLOBAL__sub_I_solution.cc, .Lfunc_end5-_GLOBAL__sub_I_solution.cc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table5:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp44-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp44
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp45-.Ltmp44                #   Call between .Ltmp44 and .Ltmp45
	.uleb128 .Ltmp46-.Lfunc_begin2          #     jumps to .Ltmp46
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Lfunc_end5-.Ltmp45            #   Call between .Ltmp45 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
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

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"stoi"
	.size	.L.str.3, 5

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"input.txt"
	.size	.L.str.4, 10

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Part 1: "
	.size	.L.str.5, 9

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"vector::_M_realloc_insert"
	.size	.L.str.10, 26

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
	.addrsig_sym _GLOBAL__sub_I_solution.cc
	.addrsig_sym _Unwind_Resume
	.addrsig_sym __stack_chk_fail
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _ZSt4cout
