#include "common.h"
#include <algorithm>
#include <cstdint>
#include <cstdio>
#include "../pim/memory_map.hh"
#include "../pim/mop.h"
#define NUM_DATA 16

int main()
{

	// Data
	char_Array ia(new char[CACHE_LINE_SIZE + 4096]);
	char_Array oc(new char[2*CACHE_LINE_SIZE + 1]);

	// Find alignment
	char* heap_alloc_1 = findfirstaligned<char*>(ia.get());
	char* heap_alloc_2 = heap_alloc_1 + CACHE_LINE_SIZE;

	char* heap_alloc_3 = findfirstaligned<char*>(oc.get());

	for(size_t itr = 0; itr < 4096; ++itr)
	{
		char nxt = static_cast<char>(itr + 1) == 0 ? 1 : static_cast<char>(itr + 1);
		heap_alloc_1[itr] = nxt;
	}

	// Set up static code.
	char** halloc_3 = reinterpret_cast<char**>(ADDR_PIM_DST);
	*halloc_3 = heap_alloc_3;
	uint64_t* halloc_4 = reinterpret_cast<uint64_t*>(ADDR_PIM_MACROOP);
	*halloc_4 = pim::MCC_SHA;

	// Set up PIM and perform pushes 
	for(size_t itr = 0; itr < 32; ++itr)
	{
		char** halloc_1 = reinterpret_cast<char**>(ADDR_PIM_SRC1);
		*halloc_1 = heap_alloc_1;

		char** halloc_2 = reinterpret_cast<char**>(ADDR_PIM_SRC2);
		*halloc_2 = heap_alloc_2;

		// Make sure they are in the TLB
		volatile char val_1 = *heap_alloc_1; volatile char val_2 = *heap_alloc_2;
	
		char* pim_sha_commit = reinterpret_cast<char*>(ADDR_PIM_SHA_COMMIT);
		*pim_sha_commit = 1;

		heap_alloc_1 += (CACHE_LINE_SIZE * 2);
		heap_alloc_2 += (CACHE_LINE_SIZE * 2);

//		fprintf(stdout, "[DEBUG] iteration %d\n", itr);
	}


	// Perform SHA.
	*heap_alloc_3 = 0;
	char* pim_addr = reinterpret_cast<char*>(ADDR_PIM_EXECUTE);
	*pim_addr = 1;

	// Reconstruct string

	// Activate
	fprintf(stdout, "PIM should of been activated by now... testing...\n");
	heap_alloc_3[40] = '\0'; // only 40 characters
	std::string output(heap_alloc_3);

	fprintf(stdout, "%s\n", output.c_str());

/*	std::string reference = "8760d3807fb0c8ce8fd426f4cf72632edf8789f6";

	if(reference != output)
	{
		fprintf(stdout, "Error! Hash is not correct.\n");
	}*/

	
	return 0;
}
