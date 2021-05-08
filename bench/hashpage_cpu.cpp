#include <random>

#include "sha1.hh"
#define PAGE_SIZE 4096

int main()
{
	// Values
	char val[PAGE_SIZE + 1];

	for(size_t itr = 0; itr < PAGE_SIZE; ++itr)
	{
		char nxt = static_cast<char>(itr + 1) == 0 ? 1 : static_cast<char>(itr + 1);
		val[itr] = nxt;
	}
	val[PAGE_SIZE] = '\0';

	std::string input(val);
	std::string output = sha1(input);

	fprintf(stdout, "%s\n", output.c_str());

	return 0;
}
