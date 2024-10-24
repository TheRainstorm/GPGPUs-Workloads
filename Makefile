
prepare_dir:
	mkdir -p $(BIN)

rodinia-3.1-apps = backprop bfs b+tree dwt2d gaussian heartwall hotspot lavaMD nn pathfinder

rodinia-3.1: prepare_dir
	make all -C Benchmarks/Rodinia
	for app in $(rodinia-3.1-apps); do \
		echo cp Benchmarks/Rodinia/src/$$app/$$app $(BIN)/$$app-rodinia-3.1; \
		cp Benchmarks/Rodinia/src/$$app/$$app $(BIN)/$$app-rodinia-3.1; \
	done
	cp Benchmarks/Rodinia/src/cfd/euler3d $(BIN)/cfd-rodinia-3.1
	cp Benchmarks/Rodinia/src/huffman/pavle $(BIN)/huffman-rodinia-3.1
	cp Benchmarks/Rodinia/src/hotspot3D/3D $(BIN)/hotspot3D-rodinia-3.1
	cp Benchmarks/Rodinia/src/lud/lud_cuda $(BIN)/lud-rodinia-3.1
	cp Benchmarks/Rodinia/src/nw/needle $(BIN)/nw-rodinia-3.1
	cp Benchmarks/Rodinia/src/particlefilter/particlefilter_float $(BIN)/particlefilter_float-rodinia-3.1
	cp Benchmarks/Rodinia/src/particlefilter/particlefilter_naive $(BIN)/particlefilter_naive-rodinia-3.1
	cp Benchmarks/Rodinia/src/streamcluster/sc_gpu $(BIN)/streamcluster-rodinia-3.1

clean:
	make clean -C Benchmarks/Rodinia
