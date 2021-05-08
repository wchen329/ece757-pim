# Basic "makefile"
# This makefile makes several benchmarks
#

.SUFFIXES: .cpp .bm
OBJS=sha1.o AES.o

.cpp.o:
	g++ -c $<
.cpp.bm: $(OBJS)
	g++ -g $(OBJS) $< -o $@

all: $(OBJS) readalot.bm matmul.bm testpim.bm testpim_adv.bm hashpage_cpu.bm hashpage_asic.bm \
	matmul_asic.bm neural_net.bm noisytext_cpu.bm noisytext_asic.bm

clean:
	rm *.bm
