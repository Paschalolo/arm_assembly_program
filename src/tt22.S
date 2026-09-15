

ConvertFtoC_: 
	ldr s1 , r4_32p0
	ldr s2 , r4_scaF_to_c
	fsub s3 , s0  ,s1
	fmul s0 , s3 , s2 
	ret 

calc_Sphere_area_vol : 
	ldr d5 , r8_PI # load from the address 
	fmov d6 , #4.0 
	fmov d7 , #3.0

	fmul d1 , d0 , d0 
	fmul d1 , d1 , d5 
	fmul d1 , d1 , d6 
	str d1 , [x0]

	fmul d2 , d1 , d0 
	fdiv d3 , d2 , d7 
	str d3 , [x1]
	ret
