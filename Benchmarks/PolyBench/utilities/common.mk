ARCH ?= -arch=sm_70
NVCC_FLAGS += -Xptxas -O3

all:
	nvcc $(NVCC_FLAGS) $(ARCH) ${CUFILES} -I${PATH_TO_UTILS} $(EXTRA_FLAGS) -o $(OUTDIR)${EXECUTABLE} 
clean:
	rm -f $(OUTDIR)${EXECUTABLE}
