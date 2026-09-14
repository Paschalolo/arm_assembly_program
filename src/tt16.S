

.section .text 
.global integer_AddSubA
.global integer_AddSubB

integer_AddSubA:
	add w3 , w0 , w1 
	sub w0 , w3 , w2 
	ret 
integer_AddSubB:
	add x3 , x0 , x1 
	sub x0 , x3, x2
	ret 
