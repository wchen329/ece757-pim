# Makefile for PIM
CFG=configs/example/se.py
OPTS=--cmd=../bench/matmul.bm --cpu-type=MinorCPU --l1d_size=16384 --l1i_size=16384 --l2_size=1048576 --caches --l2cache --cacheline_size=64

.PHONY: build

build:
	scons -j$(GEM5_JOBS) build/X86/gem5.opt CPU_MODELS=MinorCPU,AtomicSimpleCPU
run_debug:
	build/X86/gem5.debug $(CFG) $(OPTS)
run_opt:
	build/X86/gem5.opt $(CFG) $(OPTS)
