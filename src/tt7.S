// Using Link registers to store state of the stack 

.section .data 
	msg: .asciz "Hello data is here"
.section .text 
	.global _start 
	extern printf 

_start : 
	stp x29 , x30 , [sp , #-16]!
	adr x0 , msg  
	bl printf 
	mov w0 , #0 

	ldp x29 , x30 , [sp] , #16 
	ret 
