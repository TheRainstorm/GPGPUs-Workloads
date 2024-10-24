ARCH ?= -arch=sm_70
NVCC_FLAGS += -Xptxas -O3

CUFILE = alexnet_host.cu
EXECUTABLE = AN.out

all:
	nvcc $(NVCC_FLAGS) $(ARCH) ${CUFILE} -o ${EXECUTABLE} 
clean:
	rm -f *~ *.out