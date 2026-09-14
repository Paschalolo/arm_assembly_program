
.section .text 
.global ShiftA_


shiftA_:
	asr w2 , w1 , 2 
	lsl w3 , w1 , 4 
	lsr w4 , w1 , 5 
	ror w5 , w1 , 3 

	str w2 , [x0]
	str w3 , [x0 , 4] 
	str w4 , [x0 , 8]
	str w5 , [x0 , 12]
	ret

.global shiftB_
shiftB_ : 
	asr w3 , w1 , w2 
	lsl w4 , w1 , w2
	lsr w5 , w1 , w2 
	ror w6 , w1 , w2 

	str w3 , [x0]
	str w4 , [x0 , 4]
	str w5 , [x0 , 8] 
	str w6 , [xo , 12 ] 
	ret 
