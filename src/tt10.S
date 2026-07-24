// Program to printf 

.section .data
	.balign 4 
	x: .word 5
	y: .word 9 
	.balign 8 
	str : .asicz "The sum is %d\n"

.section .text
.extern printf
.global _start 

_start : 
	// save frame and kink register s
	stp x29 , x30 ,[sp, #-16]!
	adr x14 , x
	adr x0, str 
	ldp w3 , w4 , [x14] // load words into w1 and w2 
	add w3 , w3 , w4 
	// call and print from os 
	mov w1 , w3
	bl printf 
	mov w0 ,#0
	ldp x29 , x30 , [sp] , #16
	ret 


// random 
	ands x0 , x1 , #7 
	bic x3 , x3 , x4 , lsl , #4 

// loop 

	mov w0 , #0 

loop :
	cmp w0 , #10 
	b.ge end
	//... 
	add w0 , w0 , #1 
	b loop 
end : ret 
