// Branching instructtions
// Author : Ahanmisi Paschal 


.section .text 
	.global _func 

_func : 
	b end  // unconditional jumpm 

end : 
	ret

	// endless loop 
_pp : 
	b _pp 

main : 
	stp x29 , x30 , [sp , #-16]!
	cmp w0 , wzr 
	b.eq endif
	mov w0 , #1
endif : 
	ldp x29 , x30 , [sp] , #16

// Unconditionla branch to register 
	mov x0 , _pp 
	br x0 

	// or 
	stp x29 , x30 , [sp , #-16]!

	ldp x29 , x30 , [sp], #16 // x30 contians the link register this is the return address of the function 
	ret x30 

