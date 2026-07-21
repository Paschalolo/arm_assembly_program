
.section .text 
	.global _start 

_start : 
	ldr x3 , [x2] // Load quadword from addrees in x2 to x3 
	str x3 , [x2] 

	// signed immediate offset 
	ldur x0 , [x1 , #0x50] // it loads word wither 64 orr 32 bits and zero extends it 
	stur x0 , [x1 , #-0x50] // store to this address offset

	ldr x0 , [x1 , #0x7ff8] // unsigned offset 
	str x0 , [x1 , #0x3ffc]

	// register offset 
	ldr x3, [x2 , lsl , #3]

	strh w0 , [x2, x3 ,lsl , #2 ] //-> x2 + (x3 * 4 )
