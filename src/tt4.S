
.section .text 
	.global _start 

_start : 
	stp x29 , x30 , [sp , #-16]!
	mov x29 , xzr 
	mov x30 , xzr 
	ldp x29 , x30 , [sp] , #16 
	ret 
