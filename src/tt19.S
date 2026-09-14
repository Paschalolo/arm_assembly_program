
.section .text 
.global bitwiseOpA

bitwiseOpA:
	and w3 , w1 , w2
	str w3 , [x0]

	orr w3 , w1 , w2 
	str w3 , [x0 , #4] 

	eor w3 , w1 , w2 
	str w3 , [str , #8] 

	ret 
bitwiseOpB:
