EXE := l1_bw_128 l1_bw_32f_unroll l1_bw_64f l1_shared_bw l2_bw_32f l2_lat MaxFlops mem_lat shared_bw l1_bw_32f l1_bw_32f_unroll_large l1_lat l2_bw_128 l2_bw_64f mem_bw shared_lat
atomic_ubench := Atomic_add_bw Atomic_add_bw_conflict Atomic_add_lat
atomic_ubench_prefix := $(addprefix Atomic_ubench/Atomic_add/, $(atomic_ubench))
EXE += $(atomic_ubench_prefix)
CLEANS = $(addsuffix .clean, $(EXE))

export OUTDIR := $(shell pwd)/bin/

all: prepare_dir $(EXE)
clean: $(CLEANS)

$(EXE):
	make -C $@

$(CLEANS):
	make -C $(patsubst %.clean, %, $@) clean

.PHONY: $(EXE) $(CLEANS)

prepare_dir:
	mkdir -p $(OUTDIR)
