
// stack includede in printf 

.section .data 
	mydata: .asciz "Hello World"

.section .text
	.global _start 

_start : 
	stp x29 , x30 , [sp , #16]!
	adr x1 , mydata 
	mov x8 , #0x40 
	mov w0 , #1 
	mov x2 , #13 
	svc #0 
	ldp x29, x30 , [sp] , #16
	mov x8 , #0x5d 
	eor  x0 , x0 , x0 
	svc #0 
