// Special Address: DON'T MOVE, DON'T CHANGE
unsigned char pim_activate;

#include <cstdio>
#define NUM_DATA 4096



int main()
{
	int* data = new int[NUM_DATA];
	int* data_2 = new int[NUM_DATA];


	// Activate PIM (so to say)
	pim_activate = 0x1;
	fprintf(stdout, "PIM ACTIVATE ADDRESS: %p\n", &pim_activate);
	
	for(int i = 0; i < NUM_DATA; ++i)
	{
		data_2[i] = data[NUM_DATA - 1 - i];
	}

}
