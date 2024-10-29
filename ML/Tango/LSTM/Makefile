ARCH ?= -arch=sm_70
NVCC_FLAGS += -Xptxas -O3

CUFILE = lstm.cu
EXECUTABLE = LSTM
BIN ?= bin/

all:
	nvcc $(NVCC_FLAGS) $(ARCH) ${CUFILE} -o $(BIN)${EXECUTABLE} 
clean:
	rm -f $(BIN)${EXECUTABLE}
