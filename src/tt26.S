

.section .text 
.global Mat4x4Mulf32

Mat4x4Mulf32 : 
	
	// load into the registers 
	ld1 {v0.4s-v3.4s} , [x1]
	ld1 {v4.4s-v7.4s} , [x2]

	// row 0 
	fmul v16.4s , v4.4s , v0.s[0]
	fmla v16.4s , v5.4s , v0.s[1]
	fmla v16.4s , v6.4s , v0.s[2]
	fmla v16.4s , v7.4s , v0.s[3]
	st1 {v16.4s} , [x0] , #16

	fmul v17.4s , v4.4s , v1.s[0]
	fmla v17.4s , v5.4s , v1.s[1] 
	fmla v17.4s , v6.4s , v1.s[2] 
	fmla v17.4s , v7.4s , v1.s[3]
	st1 {v16.4s} , [x0] , #16
	

	fmul v17.4s , v4.4s , v1.s[0]
	fmla v17.4s , v5.4s , v1.s[1] 
	fmla v17.4s , v6.4s , v1.s[2] 
	fmla v17.4s , v7.4s , v1.s[3]
	st1 {v16.4s} , [x0] , #16


	fmul v17.4s , v4.4s , v1.s[0]
	fmla v17.4s , v5.4s , v1.s[1] 
	fmla v17.4s , v6.4s , v1.s[2] 
	fmla v17.4s , v7.4s , v1.s[3]
	st1 {v16.4s} , [x0] , #16

	ret 



