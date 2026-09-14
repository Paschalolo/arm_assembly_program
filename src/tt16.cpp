

#include <cstdio> 

extern "C" {
	int integer_AddSubA(int a , int b , int c ) ;
	long integer_AddSubB(long a , long b , long c);
}

int main(){

	std::printf("integer_add %d\n" , integer_AddSubA(12,33,43)) ;
	std::printf("integer_add %ld\n" , integer_AddSubB(12, 33, 43)) ;
	return 0; 

}
