// Special Address: DON'T MOVE, DON'T CHANGE
unsigned char pim_activate;

#include <cstdio>
#define NUM_DATA 16



int main()
{

	// Activate PIM (so to say)
	fprintf(stdout, "Trying PIM...");

	char* pim_addr = reinterpret_cast<char*>(0xfffe000000000000);
	*pim_addr = 1;

	// Activate
	fprintf(stdout, "PIM should of been activated by now...\n");
	
	return 0;
}
