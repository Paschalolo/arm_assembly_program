// compare and branch 

cbz w0 , bll 

bll : 


// new set 

.section .text 
	.global main 
	extern getchar 
main : 
	stp x29 , x30 , [sp , #-16]! 
loop : 
	bl getchar 
	mov x1 , x0 
	ldr x0 , =format 
	bl printf 

	mov w0 , #0 
	ldp x29 , x30 , [sp] , #16 
	ret

// address relative addressing 
// adr , adrp 

