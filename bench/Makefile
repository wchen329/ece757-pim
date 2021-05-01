# Basic "makefile"
# This makefile makes several benchmarks
#

.SUFFIXES: .cpp .bm

.cpp.bm:
	g++ $< -o $@

all: readalot.bm matmul.bm

clean:
	rm *.bm
