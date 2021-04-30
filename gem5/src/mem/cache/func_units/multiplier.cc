#include <iostream>
#include <vector>
#include <algorithm>

template <typename T>
void multiplier(std::vector<T> &a, std::vector<T> &b)
{
	std::transform(a.begin(), a.end(), b.begin(), a.begin(), std::multiplies<T>());
	return;
}

