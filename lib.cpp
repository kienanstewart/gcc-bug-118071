#include "lib.h"

#include <vector>

int foo(int len) {
   	auto x = std::vector<int> {};
	x.resize(len);
	return int(sizeof(x));
}
