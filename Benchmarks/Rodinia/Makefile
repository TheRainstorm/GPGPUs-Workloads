apps_dir := b+tree backprop bfs cfd dwt2d gaussian heartwall hotspot hotspot3D\
			 huffman lavaMD lud nn nw particlefilter pathfinder streamcluster


all:
	for dir in $(apps_dir); do make -C src/$$dir; done

clean:
	for dir in $(apps_dir); do make clean -C src/$$dir; done
