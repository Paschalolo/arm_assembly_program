

.section .text 

PackedAddI16 :
	ldr q0 , [x1] 
	ldr q1 , [x2]
	add v2.8h , v0.8h , v1.8h 
	str q2 , [x0]

	// signed saturated add 
	sqadd v3.8h , v0.8h , v1.8h 
	str q2 , [x0 , #16]
	ret 

PackedSubI16 : 
	ldp q0 , q1 , [x1]
	sub v2.8h , v0.8h , v1.8h 
	str q2 , [x1]

PackedAddU16 : 
	ld1 {v0.8h} , [x1]
	ld1 {v1.8h} , [x2]

	add v2.8h , v0.8h , v1.8h 
	uqadd v3.8h , v0.8h , v1.8h 

	st1 {v2.8h , v3.8h} , [x0] // will store all the values in the registers in a row wohtout redordering

	ret 
