
.section .text 
.global SumCubes 
SumCubes : 
	ldrsw x8 , [SP_ARG_I]
	ldrsw x9 , [SP_ARG_J]

	and w0 , w0 , #0xFF
	mul x10 , x0 , x0
	mul x10 , x10 , x0 

	sxth x1 , w1 
	mul x11 , x1 , x1 
	madd x10 , x11 , x1 , x10 

	sxtw x2 , w2 
	mull x11 , x2 , x2 
	madd x10 , x11 , x2 , x10 

	mul x11 , x3 ,x3
	madd x10 , x11 , x3 , x10 

	sxth x5 , w5 
	mull x10 , x11 , x6 , x10 

	uxth x7 , w7 
	mull x11 , x8 ,x8 
	madd x10 , x11 , x8 , x10 

	mull x11 , x9 , x9
	madd x0 , x11 , x9 , x10 
	ret 
