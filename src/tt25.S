

.section .text 

.global PackedComparef32

PackedCompare32 : 
	ld1 {v0.4s} , [x1]
	ld1 {v1.4s} , [x2] 

	fcmeq v2.4s , v0,4s , v1.4s 
	st1 {v2.4s} , [x0] , #16 

	not v2.16b , v2.16b 
	st1 {v2.16b} , [x1] , #16 

	fcmgt v2.4s , v0.4s , v1.4s 
	st1 {v2.4s} , [x0] , #16 

	fcmlt v2.4s , v0.4s , 0.0 
	st1 {v2.4s} , [x0] , #16 

	fcmgt v2.4s , v1.4s ,0.0
	st1 {v2.4s} , [x0] , #16 

	ret 

.global PackedCopmpareF64 

PackedCompareF64:
	ld1 {v0.4d} , [x1]
	ld1 {v1.4d} , [x2] 

	fcmeq v2.2d , v0.2d , v1.2d 
	st1 {v2.2d} , [x0] , #16 

	fcmlt v2.2d , v0.2d , v1.2d 
	st1 {v2.2d} , [x0] , #16 

	ret 
