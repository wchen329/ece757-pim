// Special Address: DON'T MOVE, DON'T CHANGE
unsigned char pim_activate;

#include <cstdint>
#include <cstdio>
#include "../pim/memory_map.hh"
#define NUM_DATA 16



int main()
{

	// Activate PIM (so to say)
	fprintf(stdout, "Trying PIM...");

	int* heap_alloc_1 = new int;
	int* heap_alloc_2 = new int;


	int** halloc_1 = reinterpret_cast<int**>(ADDR_PIM_SRC1);
	*halloc_1 = heap_alloc_1;

	int** halloc_2 = reinterpret_cast<int**>(ADDR_PIM_SRC2);
	*halloc_2 = heap_alloc_2;

	int** halloc_3 = reinterpret_cast<int**>(ADDR_PIM_DST);
	*halloc_3 = heap_alloc_2;

	uint64_t* halloc_4 = reinterpret_cast<uint64_t*>(ADDR_PIM_DST);
	*halloc_4 = 0x1;

	char* pim_addr = reinterpret_cast<char*>(ADDR_PIM_EXECUTE);
	*pim_addr = 1;

	// Activate
	fprintf(stdout, "PIM should of been activated by now...\n");
	
	return 0;
}
