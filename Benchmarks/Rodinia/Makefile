apps_dir := backprop bfs b+tree cfd dwt2d gaussian heartwall hotspot hotspot3D huffman hybridsort kmeans lavaMD leukocyte lud mummergpu myocyte nn nw particlefilter pathfinder srad streamcluster

all:
	for dir in $(apps_dir); do make -C src/$$dir; done

clean:
	for dir in $(apps_dir); do make clean -C src/$$dir; done
