include ../../../common/make.config

NVCC = $(CUDA_DIR)/bin/nvcc
NVCC_FLAGS = -I$(CUDA_DIR)/include -L$(CUDA_DIR)/lib
ARCH ?= -arch=sm_70

# Example
# target: dependencies
	# command 1
	# command 2
          # .
          # .
          # .
	# command n

# link objects(binaries) together
a.out:		main.o
	$(NVCC) $(NVCC_FLAGS) $(ARCH)	main.o \
				-lm -lcuda -lcudart -o srad

# compile main function file into object (binary)
main.o: 	main.cu \
				define.c \
				graphics.c \
				extract_kernel.cu \
				prepare_kernel.cu \
				reduce_kernel.cu \
				srad_kernel.cu \
				srad2_kernel.cu \
				compress_kernel.cu
	$(NVCC) $(NVCC_FLAGS) $(ARCH)	main.cu \
				-c -O3

# delete all object files
clean:
	rm -f *.o srad *.pgm
