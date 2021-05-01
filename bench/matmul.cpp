#include "matmul.h"

#include <cstdlib>
#include <cstring>
#include <iostream>
#include <memory>

#include "common.h"

/* Implementation of 
 * "matmul"
 */

#define FACTOR 10

#ifndef COMP_CACHE

#define MMUL_GENERIC(IT1, IT2, IT3) \
\
	\
	memset(C, 0, n*n * sizeof(int));\
	\
	for(std::size_t IT1 = 0; IT1 < n; ++IT1) \
	{ \
		for(std::size_t IT2 = 0; IT2 < n; ++IT2)\
		{ \
			for(std::size_t IT3 = 0; IT3 < n; ++IT3)\
			{\
				C[(i * n) + j] += A[(i * n) + k] * B[(k * n) + j];\
			}\
		}\
	\
	}


void matmul(const int* A, const int* B, int* C, const unsigned int n)
{
	MMUL_GENERIC(i, k, j);	
}

#endif

/* Do a quick matmul on a factor * 16 x factor * 16 matrix
 */
int main()
{
	// Make an array of ints
	int n = FACTOR * 16;
	int_Array ia(new int[n * n + CACHE_LINE_SIZE]);
	int_Array ib(new int[n * n + CACHE_LINE_SIZE]);
	int_Array oc(new int[n * n + CACHE_LINE_SIZE]);

	// Find alignment
	int* ia_aligned = findfirstaligned<int*>(ia.get());
	int* ib_aligned = findfirstaligned<int*>(ib.get());
	int* oc_aligned = findfirstaligned<int*>(oc.get());

	// Fill 'er up with somewhat randoms
	// NOTE: optimize rand gen for speed, not "uniformity"
	for(int ind = 0; ind < (n * n); ++ind)
	{
		ia_aligned[ind] = rand() % 4;
		ib_aligned[ind] = rand() % 4;
	}

	
	matmul(ia_aligned, ib_aligned, oc_aligned, n);

	// Perform matmul.
	std::cout << "MATMUL DONE." << std::endl;
	std::cout << "First Entry: " << oc_aligned[0] << std::endl;

}
