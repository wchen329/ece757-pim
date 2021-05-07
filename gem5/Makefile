# Makefile for PIM
GEM5_JOBS=5
CFG=configs/example/se.py
BUILD_OPTS=CPU_MODELS=MinorCPU,AtomicSimpleCPU
OPTS=--cmd=../bench/testpim.bm --cpu-type=MinorCPU --l1d_size=16384 --l1i_size=16384 --l2_size=1048576 --caches --l2cache --cacheline_size=64

.PHONY: build debug

opt:
	scons -j$(GEM5_JOBS) build/X86/gem5.opt $(BUILD_OPTS)

debug:
	scons -j$(GEM5_JOBS) build/X86/gem5.debug $(BUILD_OPTS)

run_debug:
	echo "run $(CFG) $(OPTS)" > gem5.gdb.in
	gdb build/X86/gem5.debug -x gem5.gdb.in
run_opt:
	build/X86/gem5.opt $(CFG) $(OPTS)
