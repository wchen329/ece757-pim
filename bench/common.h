#ifndef __COMMON_H__
#define __COMMON_H__
#include <memory>
#include <random>

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

#endif
