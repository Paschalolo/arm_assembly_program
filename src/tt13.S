
main : 
	stp x29 , x30 , [sp, #-16]!

	mov x0 , #(1000 * 100 * 3)
	bl malloc 
	cmp x0 , xzr 
	b.ne endif 
	mov x0 , #-1 
	b return 
endif :
	mov w3 , #100 
	mov w4 , #100
	mov w5 , #0 
	mov w1 , #0 
	mov w2 , #0
	madd x9 , x1 , x2, x3
	add x9 , x9 , x0
	strb w5 , [x9 , #3]
	strb w5 , [x9 , #4 ]
	add w2 , w2 , #1 
	ble loop2 

	add w1 , w1 , #1 
	cmp w1 , w4 
	b.le loop1

	bl free 

return  : 
	ldp x29 , x30 , [sp] , #16
	ret 
