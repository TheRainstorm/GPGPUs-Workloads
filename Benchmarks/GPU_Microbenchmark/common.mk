ARCH ?= -arch=sm_70
NVCC_FLAGS += -Xptxas -O3
OUTDIR ?= .

all:
	nvcc $(NVCC_FLAGS) $(ARCH) ${CUFILES} -o $(OUTDIR)/${EXECUTABLE}
clean:
	rm -f $(OUTDIR)/${EXECUTABLE}
