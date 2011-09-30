/* test code to check how gdb treat symbols
 * In accordance with compiler optimization,
 * elements of symbol table change
 */

int main(){
	const int i_const = 1;
	int i=0;

	i=i_const;

}
