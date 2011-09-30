	.file	"hello.bc"
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
	subq	$8, %rsp
	movl	$.L.str, %edi
	callq	puts
	xorl	%eax, %eax
	addq	$8, %rsp
	ret
	.size	main, .-main

	.type	.L.str,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:                                 # @.str
	.asciz	 "hello world"
	.size	.L.str, 12


	.section	.note.GNU-stack,"",@progbits
