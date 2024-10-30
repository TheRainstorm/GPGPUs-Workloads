export OUTDIR := $(shell pwd)/bin/

datamining_apps := correlation covariance
linear_algebra_apps := 2mm 3mm atax bicg doitgen gemm gemver gesummv gramschmidt lu mvt syr2k syrk
stencils_apps := adi convolution-2d convolution-3d fdtd-2d jacobi-1d jacobi-2d

EXE := $(addprefix datamining/, $(datamining_apps))
EXE += $(addprefix linear-algebra/, $(linear_algebra_apps))
EXE += $(addprefix stencils/, $(stencils_apps))
CLEANS = $(addsuffix .clean, $(EXE))

all: prepare_dir $(EXE)
clean: $(CLEANS)

$(EXE):
	make -C $@

$(CLEANS):
	make -C $(patsubst %.clean, %, $@) clean

.PHONY: $(EXE) $(CLEANS)

prepare_dir:
	mkdir -p $(OUTDIR)
