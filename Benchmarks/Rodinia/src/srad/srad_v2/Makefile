include ../../../common/make.config

NVCC = $(CUDA_DIR)/bin/nvcc
ARCH ?= -arch=sm_70
NVCC_FLAGS = -I$(CUDA_DIR)/include -L$(CUDA_DIR)/lib

SRC = srad.cu

EXE = srad

release: $(SRC)
	$(NVCC) $(NVCC_FLAGS) $(ARCH) $(KERNEL_DIM) $(SRC) -o $(EXE)

enum: $(SRC)
	$(NVCC) $(NVCC_FLAGS) $(ARCH) $(KERNEL_DIM) -deviceemu $(SRC) -o $(EXE)

debug: $(SRC)
	$(NVCC) $(NVCC_FLAGS) $(ARCH) $(KERNEL_DIM) -g $(SRC) -o $(EXE)

debugenum: $(SRC)
	$(NVCC) $(NVCC_FLAGS) $(ARCH) $(KERNEL_DIM) -g -deviceemu $(SRC) -o $(EXE)

clean: $(SRC)
	rm -f $(EXE) $(EXE).linkinfo result.txt
