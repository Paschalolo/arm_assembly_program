
// Fmov 
fmov d3 , #-7.0 // moves immedaite into 64 bit floating point register
fmov s5 , #-7.0 // moves immedaiate into a 32 bit regisster


sin_a_b : 
	ldr x0 , =a_tab 
	fmul d1, d2 , d3 
	fmov d1, d0 
	mov x3 , #TERMS 

loop : 
	fmul d3, d1 , d3 
	ldr d4, [x0] , #8 
	subs x3 , x3, #1
	fmadd do , d3 , d4 , d0 
	b.ne loop
	ret 
