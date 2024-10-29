ARCH ?= -arch=sm_70
NVCC_FLAGS += -Xptxas -O3

CUFILE = alexnet_host.cu
EXECUTABLE = AN
BIN ?= bin/

all:
	nvcc $(NVCC_FLAGS) $(ARCH) ${CUFILE} -o $(BIN)${EXECUTABLE} 
clean:
	rm -f $(BIN)${EXECUTABLE}
