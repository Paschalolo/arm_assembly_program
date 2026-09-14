
.section .data 
	.equ ARG_X , 48
	.equ ARG_Y , 56 
	.equ TEMPO , 0 
	.equ TEMP1 , 4 
	.equ TEMP2 , 8
	.equ TEMP3 , 16
.section .text

LocalVars: 
	stp x19 , x20 , [sp , #-16]!
	sub sp , sp , #32

	add w8 , w0 , w1 
	add w8 , w8 , w2 
	str w8 , [sp , TEMPO0] 

	ldr x19 , =g_val1
	ldr w19 , [x19]
	sub w , w3 , w19 
	str w8 , [sp_TEMP1]

	// calculate temp2 
	add x8 , x4 , x5 
	add x9 , x8 , x5
	str x8 , [str_TEMP0]

	ldr x20 , =g_val 
	ldr w1 , [sp_TEMP1]
	mul w2 , w0 , w1 
	ldr x3 , [sp_ARG_X]
	str w2 , [x3] 

	//calculate y 
	ldr x0 , [sp , TEMP2] 
	ldr x1 , [sp_TEMP3]
	mul x2 , x0 , x1 
	ldr x3 , [sp_ARG-Y]
	str x2 , [x3]
	// Epilogue 

	add sp , sp , #32 
	ldp x19 , x20 , [sp] , #16
	ret 


