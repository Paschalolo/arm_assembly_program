
// File just printing hello world 
.section .data 
	nydata:  .asciz "Hello world"
.section .text
	
	.global _start 

.balign 4
_start : 
	mov x8 , #0x40
	mov w0 , #1 //  descriptor to write to stdout
	adrp x1 , nydata
	add x1 , x1 , :lo12:nydata
	mov x2 , #12 
	svc #0

	// terminate the program 
	mov x8 , #0x5d 
	mov w0 , #0 
	svc #0

