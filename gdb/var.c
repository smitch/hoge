/* test code to use gdb command related to variable
 * 1. test how to use watch command
 * first, break at the function which have an interest variable
 * or, "break <file name>:<function>"
 * then, "watch <variable>"
 * 2. test to check variable scope
*/

#include<stdio.h>

void hoge(){
	int i;
	for(i=0; i<9; i++)
		printf("%d ", i);
	printf("\n");
}

int main(){
	int i;
	for(i=0; i<10; i++){
		hoge();
	}
	return 0;
}
