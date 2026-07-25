

sub sp , sp , #400 

mov x0 , #0 
loop : 
	str w0 , [sp , x0 , lsl , #2]
	add x0 , x0 , #1 
	cmp x0 , #400
	b.lt end 
end : 
	ret 

