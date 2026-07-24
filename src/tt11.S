

.section .text
.extern getchar 
_start : 
	stp x29 , x30 , [sp , #-16]!
loop: 
	bl getchar 
	cmp w0 , #0x40
	b.ne loop
	ldp x29 , x30 , [sp], #16 
	ret 
