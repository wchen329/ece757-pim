#ifndef __COMMON_H__
#define __COMMON_H__
#include <cstdint>
#include <memory>
#include <random>
#define CACHE_LINE_SIZE 64

template <class TMP> class RandomGen
{
public:
	RandomGen() :
		range(-10, 10),
		rd(),
		gener(rd())
	{
	}

	TMP getNext() { return range(gener); }
//	TMP getNext() { return 1; }

	std::uniform_int_distribution<TMP> range;
	std::random_device rd;
	std::mt19937_64 gener;
};

typedef std::unique_ptr<int, std::default_delete<int[]>> int_Array;
typedef std::unique_ptr<char, std::default_delete<char[]>> char_Array;

template<class PtrType> PtrType findfirstaligned(PtrType input)
{
	PtrType ptr_out = input;
	while(reinterpret_cast<uint64_t>(ptr_out) % CACHE_LINE_SIZE != 0)
	{
		++ptr_out;
	}

	return ptr_out;
}

#endif
