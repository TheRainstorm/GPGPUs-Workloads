ARCH ?= -arch=sm_70
NVCC_FLAGS += -w -Xptxas -O3

CUFILE = resnet_host.cu
EXECUTABLE = RN
BIN ?= bin/

all:
	nvcc $(NVCC_FLAGS) $(ARCH) ${CUFILE} -o $(BIN)${EXECUTABLE} 
clean:
	rm -f $(BIN)${EXECUTABLE}
