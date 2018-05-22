#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

uint64_t x = 0, w = 0, s = 0xb5ad4eceda1ce2a9;

inline static uint32_t msws() {
   x *= x; 
   x += (w += s); 
   return x = (x>>32) | (x<<32);
}

int main (){
	FILE * file; // Create log file
	file = fopen("randNum.txt","w");
	printf("\nStarting Generator\n");
	for(uint32_t i = 0; i < 0xFFFF; ++i){
		fprintf(file, "%x\n", msws());
	}
	printf("\nGenerator Finished\n");
	fclose(file);
	return 0;
}