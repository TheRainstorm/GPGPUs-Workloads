apps :=  l1_bw_128  l1_bw_32f_unroll        l1_bw_64f  l1_shared_bw  l2_bw_32f  l2_lat    MaxFlops  mem_lat    shared_bw \
		l1_bw_32f  l1_bw_32f_unroll_large  l1_lat     l2_bw_128     l2_bw_64f  Makefile  mem_bw    readme.md  shared_lat
atomic_ubench := Atomic_add_bw Atomic_add_bw_conflict Atomic_add_lat

export OUTDIR := $(shell pwd)/bin
prepare_dir:
	mkdir -p $(OUTDIR)

all: prepare_dir
	for dir in $(apps); do make -C $$dir; done
	for dir in $(atomic_ubench); do make PATH_TO_UTILS='../../../' -C Atomic_ubench/Atomic_add/$$dir ; done

clean:
	rm -f $(OUTDIR)/*
	# for dir in $(apps); do make clean -C $$dir; done
	# for dir in $(atomic_ubench); do make clean -C Atomic_ubench/Atomic_add/$$dir; done
