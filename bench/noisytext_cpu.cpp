#include <random>
#include <iostream>
#include <cstdio>

#include "AES.hh"
#define PAGE_SIZE 4096

int main()
{
	// Values
	unsigned char val[PAGE_SIZE + 1];
	unsigned char cipher_text[PAGE_SIZE + 1];

	for(size_t itr = 0; itr < PAGE_SIZE; ++itr)
	{
		char nxt = itr % 3 == 0 ? 'a' :
			itr % 3 == 1 ? 'b' :
			itr % 3 == 2 ? 'c' : 'd';
		val[itr] = nxt;
	}
	val[PAGE_SIZE] = '\0';

	unsigned char key[256];
	unsigned char IV[256];
	for(int itr = 0; itr < 256; ++itr)
		key[itr] = itr;
	for(int itr = 255; itr >= 0; --itr)
		IV[itr] = itr;

	// Create AES instance
	AES aes(256);

	unsigned int output_len = PAGE_SIZE;
	unsigned char* aout = aes.EncryptCBC(static_cast<unsigned char*>(val),
		PAGE_SIZE,
		static_cast<unsigned char*>(key),
		static_cast<unsigned char*>(IV),
		output_len
	);

	std::copy<unsigned char*>(aout, aout + PAGE_SIZE, cipher_text);

	// Do AES in a loop

	std::cout << "Ciphertext, first 4: \n" << std::endl;
	for(size_t itr = 0; itr < 4; ++itr)
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

	return 0;
}
