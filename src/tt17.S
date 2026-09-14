
.section .text 

.global testldr1

testldr1: 
	ldr x2 , =A1 # could also be adr x2 , A1

	ldr w3 , [x2 , w0 , uxtw 2]
	ldr w4 , [x2 , x1 , lsl  2] 

	add w0 , w3 ,w4 
	ret 
