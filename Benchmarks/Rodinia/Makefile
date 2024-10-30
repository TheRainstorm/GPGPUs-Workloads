DIRS_ := backprop bfs b+tree cfd dwt2d gaussian heartwall hotspot hotspot3D huffman hybridsort kmeans lavaMD lud mummergpu myocyte nn nw particlefilter pathfinder srad streamcluster
EXE = $(addprefix src/, $(DIRS_))
CLEANS = $(addsuffix .clean, $(EXE))
name_ok_apps := backprop bfs b+tree dwt2d gaussian heartwall hotspot hybridsort kmeans lavaMD nn pathfinder

export OUTDIR := $(shell pwd)/bin/

all: prepare_dir $(EXE)
	@for app in $(name_ok_apps); do \
		cp src/$$app/$$app $(OUTDIR)/$$app-rodinia-3.1 && \
		echo cp src/$$app/$$app $(OUTDIR)/$$app-rodinia-3.1; \
	done
	-cp src/cfd/euler3d $(OUTDIR)/cfd-rodinia-3.1
	-cp src/huffman/pavle $(OUTDIR)/huffman-rodinia-3.1
	-cp src/hotspot3D/3D $(OUTDIR)/hotspot3D-rodinia-3.1
	-cp src/lud/lud_cuda $(OUTDIR)/lud-rodinia-3.1
	-cp src/nw/needle $(OUTDIR)/nw-rodinia-3.1
	-cp src/particlefilter/particlefilter_float $(OUTDIR)/particlefilter_float-rodinia-3.1
	-cp src/particlefilter/particlefilter_naive $(OUTDIR)/particlefilter_naive-rodinia-3.1
	-cp src/hybridsort/hybridsort $(OUTDIR)/hybridsort-rodinia-3.1
	# -cp src/leukocyte/CUDA/leukocyte $(OUTDIR)/leukocyte-rodinia-3.1
	-cp src/mummergpu/bin/mummergpu $(OUTDIR)/mummergpu-rodinia-3.1
	-cp src/myocyte/myocyte.out $(OUTDIR)/myocyte-rodinia-3.1
	-cp src/srad/srad_v1/srad $(OUTDIR)/srad_v1-rodinia-3.1
	-cp src/srad/srad_v2/srad $(OUTDIR)/srad_v2-rodinia-3.1
	-cp src/streamcluster/sc_gpu $(OUTDIR)/streamcluster-rodinia-3.1

clean: $(CLEANS)
	rm -rf $(OUTDIR)

$(EXE):
	make -C $@

$(CLEANS):
	make -C $(patsubst %.clean, %, $@) clean

.PHONY: $(EXE) $(CLEANS)

prepare_dir:
	mkdir -p $(OUTDIR)
