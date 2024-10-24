ARCH ?= -arch=sm_70
NVCC_FLAGS += -Xptxas -O3

CUFILE = lstm.cu
EXECUTABLE = LSTM.out

all:
	nvcc $(NVCC_FLAGS) $(ARCH) ${CUFILE} -o ${EXECUTABLE} 
clean:
	rm -f *~ *.out