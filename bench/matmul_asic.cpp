#include "matmul.h"

#include <algorithm>
#include <cassert>
#include <cstdlib>
#include <cstring>
#include <iostream>
#include <memory>
#include "../pim/memory_map.hh"
#include "../pim/mop.h"

#include "common.h"

/* Implementation of 
 * "matmul"
 */

#define FACTOR 10

void matmul_cc(int* A, int* B, int* C,
		int* D, int* E, const unsigned int n)
{
	memset(C, 0, n*n * sizeof(int));
	
	for(std::size_t i = 0; i < n; ++i) 
	{ 
		for(std::size_t k = 0; k < n; ++k)
		{ 
			for(std::size_t j = 0; j < n; j += 16)
			{
				// Make calculation layers
				std::fill_n<int*>(D, 16, A[(i*n) + k]);

				int* B_curr = (B + (k * n + j));

				// Perform D * B, store it in a third buffer.
				int** src1 = reinterpret_cast<int**>(ADDR_PIM_SRC1);
				*src1 = D;
				int** src2 = reinterpret_cast<int**>(ADDR_PIM_SRC2);
				*src2 = B_curr;
				int** dst = reinterpret_cast<int**>(ADDR_PIM_DST);
				*dst = E;

				// Page in src1 src2 and dst
				volatile int touch1 = *D;
				volatile int touch2 = *B_curr;
				volatile int touch3 = *E;
				
				uint64_t* op = reinterpret_cast<uint64_t*>(ADDR_PIM_MACROOP);
				*op = static_cast<uint64_t>(pim::MCC_MUL);
				char* pim_addr = reinterpret_cast<char*>(ADDR_PIM_EXECUTE);
				*pim_addr = 1;

				// Original: int multiply = A[(i * n) + k] * B[(k * n) + j];

				// Sum, which can be done similarly
				int* C_addr = (C + (i * n) + j);
				*src1 = C_addr;
				*src2 = E;
				*dst = C_addr;

				touch1 = *C_addr;
				touch2 = *E;

				*op = static_cast<uint64_t>(pim::MCC_ADD);
				*pim_addr = 1;
				
				// Original: C[(i * n) + j]  = C[(i * n) + j] + multiply;
			}
		}
	
	}
}

/* Do a quick matmul on a factor * 16 x factor * 16 matrix
 */
int main()
{
	// Make an array of ints
	int n = FACTOR * 16;
	int_Array ia(new int[n * n + 16]);
	int_Array ib(new int[n * n + 16]);
	int_Array oc(new int[n * n + 16]);
	int_Array id(new int[32]);
	int_Array ie(new int[32]);

	// Heap allocation
	int* heap_alloc_1 = findfirstaligned<int*>(ia.get());
	int* heap_alloc_2 = findfirstaligned<int*>(ib.get());
	int* heap_alloc_3 = findfirstaligned<int*>(oc.get());
	int* heap_alloc_4 = findfirstaligned<int*>(id.get());
	int* heap_alloc_5 = findfirstaligned<int*>(ie.get());

	// Fill 'er up with somewhat randoms
	// NOTE: optimize rand gen for speed, not "uniformity"
	for(int ind = 0; ind < (n * n); ++ind)
	{
		heap_alloc_1[ind] = ind + 1;
		heap_alloc_2[ind] = ind + 1; 
	}

	matmul_cc(heap_alloc_1, heap_alloc_2, heap_alloc_3, heap_alloc_4,
			heap_alloc_5, n);

	// Perform matmul.
	std::cout << "MATMUL DONE." << std::endl;
	std::cout << "First Entry: " << heap_alloc_3[0] << std::endl;

}
