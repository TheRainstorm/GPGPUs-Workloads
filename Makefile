
EXE := rodinia-3.1 polybench GPU_Microbenchmark deepbench Tango

all: $(EXE)

prepare_dir:
	mkdir -p $(BIN)

rodinia-3.1: prepare_dir
	make -C Benchmarks/Rodinia
	cp Benchmarks/Rodinia/bin/* $(BIN)

polybench: prepare_dir
	make -C Benchmarks/PolyBench
	for file in "Benchmarks/PolyBench/bin"/*.out; do \
		basename=$$(basename $$file .out); \
		new_name="polybench-$$basename"; \
		echo cp "$$file" "$(BIN)$$new_name"; \
		cp "$$file" "$(BIN)$$new_name"; \
	done

GPU_Microbenchmark: prepare_dir
	make -C Benchmarks/GPU_Microbenchmark
	cp Benchmarks/GPU_Microbenchmark/bin/* $(BIN)

deepbench:
	make -C ML/DeepBench

Tango:
	make -C ML/Tango

clean:
	make clean -C Benchmarks/Rodinia
	make clean -C Benchmarks/PolyBench
	make clean -C Benchmarks/GPU_Microbenchmark
	make clean -C ML/DeepBench
	make clean -C ML/Tango

.PHONY: all clean $(EXE)
