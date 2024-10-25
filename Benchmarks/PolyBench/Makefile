datamining_dir := datamining
linear-algebra_dir := linear-algebra
stencils_dir := stencils

datamining_apps := correlation covariance
linear-algebra_apps := 2mm 3mm atax bicg doitgen gemm gemver gesummv gramschmidt lu mvt syr2k syrk
stencils_apps := adi convolution-2d convolution-3d fdtd-2d jacobi-1d jacobi-2d

export OUTDIR := $(shell pwd)/bin
prepare_dir:
	mkdir -p $(OUTDIR)

all: prepare_dir
	for dir in $(datamining_apps); do make -C $(datamining_dir)/$$dir; done
	for dir in $(linear-algebra_apps); do make -C $(linear-algebra_dir)/$$dir; done
	for dir in $(stencils_apps); do make -C $(stencils_dir)/$$dir; done

clean:
	for dir in $(datamining_apps); do make clean -C $(datamining_dir)/$$dir; done
	for dir in $(linear-algebra_apps); do make clean -C $(linear-algebra_dir)/$$dir; done
	for dir in $(stencils_apps); do make clean -C $(stencils_dir)/$$dir; done
