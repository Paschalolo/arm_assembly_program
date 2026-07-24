

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

ccmp x0 , x1 , 0b0010 , eq 
cset w0 , cc// this will set the w0 register to 1 or 0 dependin on the carry flag
