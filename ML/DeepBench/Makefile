export CUDA_PATH := $(CUDA_PATH)
# export CUDNN_PATH?=/usr/local/cudnn

export PAD_KERNELS ?=1
# export USE_TENSOR_CORES ?= 1

export NVCC_ARCH_ARGS := $(ARCH)

all: deepbench deepbench-tensor

deepbench:
	make USE_TENSOR_CORES=0 gemm conv -C src/code/nvidia
	cp src/code/nvidia/bin/* $(BIN)/
	
deepbench-tensor:
	make USE_TENSOR_CORES=1 gemm conv -C src/code/nvidia
	cp src/code/nvidia/bin/* $(BIN)/
