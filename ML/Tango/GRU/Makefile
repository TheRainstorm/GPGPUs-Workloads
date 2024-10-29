ARCH ?= -arch=sm_70
NVCC_FLAGS += -Xptxas -O3

CUFILE = gru_host.cu
EXECUTABLE = GRU
BIN ?= bin/

all:
	nvcc $(NVCC_FLAGS) $(ARCH) ${CUFILE} -o $(BIN)${EXECUTABLE} 
clean:
	rm -f $(BIN)${EXECUTABLE}
