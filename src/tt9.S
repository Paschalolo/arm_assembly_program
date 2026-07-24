
// Arithmetic operations 

.section .text 
_start :

	add x0 , x1 , x2
	subs x3 , x3 , x1  // subract  and sets flags so this changes the state of PSATE register 
	neg x4 , x5 , lsl , #4 
