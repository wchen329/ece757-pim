#include <random>
#include <iostream>
#include <cstdio>
#include "../pim/memory_map.hh"
#include "../pim/mop.h"

#include "AES.hh"
#include "common.h"
#define PAGE_SIZE 4096

int main()
{
	// Values
	unsigned char* alloc_pt = new unsigned char[PAGE_SIZE + 1 + 64];
	unsigned char* alloc_ctxt = new unsigned char[PAGE_SIZE + 1 + 64];
	unsigned char* alloc_key = new unsigned char[32 + 64];
	unsigned char* alloc_IV = new unsigned char[32 + 64];
	unsigned char* alloc_src2_buf = new unsigned char[128];

	// ALigned arrays
	unsigned char* val = findfirstaligned<unsigned char*>(alloc_pt);
	unsigned char* cipher_text = findfirstaligned<unsigned char*>(alloc_ctxt);
	unsigned char* key = findfirstaligned<unsigned char*>(alloc_key);
	unsigned char* IV = findfirstaligned<unsigned char*>(alloc_IV);
	unsigned char* src2_buf = findfirstaligned<unsigned char*>(alloc_src2_buf);

	for(size_t itr = 0; itr < PAGE_SIZE; ++itr)
	{
		char nxt = itr % 3 == 0 ? 'a' :
			itr % 3 == 1 ? 'b' :
			itr % 3 == 2 ? 'c' : 'd';
		val[itr] = nxt;
	}
	val[PAGE_SIZE] = '\0';

	for(int itr = 0; itr < 32; ++itr)
		key[itr] = itr;
	for(int itr = 31; itr >= 0; --itr)
		IV[itr] = itr;

	// Write the op first
	uint64_t* op = reinterpret_cast<uint64_t*>(ADDR_PIM_MACROOP);
	*op = pim::MCC_AES_BC;

	// Set up src2_buf
	std::copy<unsigned char*, unsigned char*>(key, key + 32, src2_buf);
	std::copy<unsigned char*, unsigned char*>(IV, IV + 32, src2_buf + 32);

	// Set encryption source

	unsigned char** src2 = reinterpret_cast<unsigned char**>(ADDR_PIM_SRC2);
	*src2 = src2_buf;

	// Temporaries
	unsigned char* cipher_text_temp = cipher_text;
	unsigned char* src1_temp = val;

	// Do Encryption in a loopsrc1 
	for(size_t enc = 0; enc < 64; ++enc)
	{
		unsigned char** src1 = reinterpret_cast<unsigned char**>(ADDR_PIM_SRC1);
		*src1 = src1_temp;
		unsigned char** dst = reinterpret_cast<unsigned char**>(ADDR_PIM_DST);
		*dst = cipher_text_temp;

		// Page in
		volatile char touch = *src2_buf;
		volatile char touch_2 = *src1_temp;
		volatile char touch_3 = *cipher_text_temp;

		// Do the encryptin
		uint64_t* go = reinterpret_cast<uint64_t*>(ADDR_PIM_EXECUTE);
		*go = 1;

		// Set the initialization vector to the old output from this round (last 32)
		std::copy<unsigned char*, unsigned char*>(cipher_text_temp + 32, cipher_text_temp  + 64, src2_buf + 32);

		// Encrypt more plain text
		cipher_text_temp += 64;
		src1_temp += 64;
		
	}

	std::cout << "Ciphertext, first 4: \n" << std::endl;
	for(size_t itr = 0; itr < PAGE_SIZE; ++itr)
	{
		std::cout << cipher_text[itr] << "... ";
	}

	std::cout << std::endl;

	std::cout << "Ciphertext, last 4: \n" << std::endl;
	for(size_t itr = PAGE_SIZE - 4; itr < PAGE_SIZE; ++itr)
	{
		std::cout << cipher_text[itr] << "... ";
	}

	std::cout << std::endl;

	delete[] alloc_pt;
	delete[] alloc_ctxt;
	delete[] alloc_key;
	delete[] alloc_IV;
	delete[] alloc_src2_buf;

	return 0;
}
