export CUDA_PATH := $(CUDA_PATH)
# export CUDNN_PATH?=/usr/local/cudnn

export PAD_KERNELS ?=1
# export USE_TENSOR_CORES ?= 1

export NVCC_ARCH_ARGS := $(ARCH)

EXE := gemm conv rnn

all: $(EXE)

$(EXE):
	$(MAKE) USE_TENSOR_CORES=1 NUMREPEAT=1 -C src/code/nvidia $@
	$(MAKE) USE_TENSOR_CORES=0 NUMREPEAT=1 -C src/code/nvidia $@
	cp src/code/nvidia/bin/$@_bench-tensor $(BIN)/
	cp src/code/nvidia/bin/$@_bench $(BIN)/

clean:
	rm -rf src/code/nvidia/bin/