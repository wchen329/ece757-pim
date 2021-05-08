#include "common.h"
#include <algorithm>
#include <cstdint>
#include <cstdio>
#include "../pim/memory_map.hh"
#define NUM_DATA 16



int main()
{

	// Activate PIM (so to say)
	fprintf(stdout, "Trying PIM...");

	int_Array ia(new int[16 + CACHE_LINE_SIZE]);
	int_Array ib(new int[16 + CACHE_LINE_SIZE]);
	int_Array oc(new int[16 + CACHE_LINE_SIZE]);

	// Find alignment
	int* heap_alloc_1 = findfirstaligned<int*>(ia.get());
	int* heap_alloc_2 = findfirstaligned<int*>(ib.get());
	int* heap_alloc_3 = findfirstaligned<int*>(oc.get());

	std::fill_n<int*>(heap_alloc_1, 16, 1);
	std::fill_n<int*>(heap_alloc_2, 16, 1);
	std::fill_n<int*>(heap_alloc_3, 16, 0);


	int** halloc_1 = reinterpret_cast<int**>(ADDR_PIM_SRC1);
	*halloc_1 = heap_alloc_1;

	int** halloc_2 = reinterpret_cast<int**>(ADDR_PIM_SRC2);
	*halloc_2 = heap_alloc_2;

	int** halloc_3 = reinterpret_cast<int**>(ADDR_PIM_DST);
	*halloc_3 = heap_alloc_3;

	uint64_t* halloc_4 = reinterpret_cast<uint64_t*>(ADDR_PIM_MACROOP);
	*halloc_4 = 0x1;

	char* pim_addr = reinterpret_cast<char*>(ADDR_PIM_EXECUTE);
	*pim_addr = 1;

	// Activate
	fprintf(stdout, "PIM should of been activated by now...\n");

	
	return 0;
}
