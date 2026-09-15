
.section .text 
.global PackedMath32

PackedMath32:
	ld1 {v0.4s} , [x1]
	ld1 {v1.4s} , [x2]

	fadd v2.4s , v0.4s , v1.4s 
	st1 {v2.4s} , [x0] , #16 

	fsub v2.4s , v0.4s , v1.4s
	st1 {v2.4s} , [x0 ] , #16 

	fmul v2.4s , v0.4s , v1.4s 
	st1 {v2.4s} , [x0 ] , #16 
	
	fdiv v2.4s , v0.4s , v1.4s 
	st1 {v2.4s} , [x0 ] , #16

	fabs v2.4s , v0.4s , v1.4s 
	st1 {v2.4s} , [x0 ] , #16 
	
	fneg v2.4s , v0.4s , v1.4s 
	st1 {v2.4s} , [x0 ] , #16 

	ret 
