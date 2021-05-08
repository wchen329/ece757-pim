# Basic "makefile"
# This makefile makes several benchmarks
#

.SUFFIXES: .cpp .bm

.cpp.bm:
	g++ -g $< -o $@

all: readalot.bm matmul.bm testpim.bm testpim_adv.bm

clean:
	rm *.bm
