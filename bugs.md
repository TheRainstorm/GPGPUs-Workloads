# Notes

record errors when compiling benchmarks

## cuda samples

Some apps use cuda samples header files, which are not included in the cuda toolkit

https://docs.nvidia.com/cuda/cuda-samples/index.html
> As of CUDA 11.6, all CUDA samples are now only available on the GitHub repository. They are no longer available via CUDA toolkit.

## Rodinia

### `b+tree`: "undefined reference to `__gxx_personality_v0'" and g++

https://stackoverflow.com/questions/6045809/link-error-undefined-reference-to-gxx-personality-v0-and-g

Solution: add the following flag to the g++ command

```shell
-lstdc++
```

## `hybridsort`: `GL/glew.h: No such file or directory`

```shell
/usr/local/cuda-11.0/bin/nvcc  -gencode arch=compute_60,code=sm_60 -gencode arch=compute_70,code=sm_70 -gencode arch=compute_80,code=sm_80         bucketsort.cu mergesort.cu main.cu -o hybridsort
bucketsort.cu:10:10: fatal error: GL/glew.h: No such file or directory
 #include <GL/glew.h>
          ^~~~~~~~~~~
compilation terminated.
make: *** [Makefile:21: hybridsort] Error 1
```

Solution:

https://stackoverflow.com/questions/15852417/compiling-opengl-program-gl-glew-h-missing

```shell
sudo apt-get install libglew-dev
```

### leukocyte

```shell
gcc -g -O3 -Wall -I../meschach_lib -lm avilib.o find_ellipse.o find_ellipse_kernel.o track_ellipse.o track_ellipse_kernel.o misc_math.o detect_main.o -o leukocyte ../meschach_lib/meschach.a -L/usr/local/cuda-11.0/lib64 -lm -lcuda -lcudart
/usr/bin/ld: avilib.o: relocation R_X86_64_32 against `.rodata.str1.1' can not be used when making a PIE object; recompile with -fPIE
/usr/bin/ld: find_ellipse.o: relocation R_X86_64_32 against `.rodata.str1.1' can not be used when making a PIE object; recompile with -fPIE
/usr/bin/ld: track_ellipse.o: relocation R_X86_64_32 against `.rodata.str1.1' can not be used when making a PIE object; recompile with -fPIE
/usr/bin/ld: ../meschach_lib/meschach.a(memory.o): relocation R_X86_64_32 against `.rodata.str1.1' can not be used when making a PIE object; recompile with -fPIE
/usr/bin/ld: ../meschach_lib/meschach.a(matop.o): relocation R_X86_64_32 against `.rodata.str1.1' can not be used when making a PIE object; recompile with -fPIE
/usr/bin/ld: ../meschach_lib/meschach.a(submat.o): relocation R_X86_64_32 against `.rodata.str1.1' can not be used when making a PIE object; recompile with -fPIE
/usr/bin/ld: ../meschach_lib/meschach.a(init.o): relocation R_X86_64_32 against `.rodata.str1.1' can not be used when making a PIE object; recompile with -fPIE
/usr/bin/ld: ../meschach_lib/meschach.a(ivecop.o): relocation R_X86_64_32 against `.rodata.str1.1' can not be used when making a PIE object; recompile with -fPIE
/usr/bin/ld: ../meschach_lib/meschach.a(meminfo.o): relocation R_X86_64_32S against symbol `mem_connect' can not be used when making a PIE object; recompile with -fPIE
/usr/bin/ld: ../meschach_lib/meschach.a(lufactor.o): relocation R_X86_64_32 against `.rodata.str1.1' can not be used when making a PIE object; recompile with -fPIE
/usr/bin/ld: ../meschach_lib/meschach.a(solve.o): relocation R_X86_64_32 against `.rodata.str1.1' can not be used when making a PIE object; recompile with -fPIE
/usr/bin/ld: ../meschach_lib/meschach.a(norm.o): relocation R_X86_64_32 against `.rodata.str1.1' can not be used when making a PIE object; recompile with -fPIE
/usr/bin/ld: ../meschach_lib/meschach.a(bdfactor.o): relocation R_X86_64_32 against `.rodata.str1.1' can not be used when making a PIE object; recompile with -fPIE
/usr/bin/ld: ../meschach_lib/meschach.a(sparse.o): relocation R_X86_64_32 against `.rodata.str1.1' can not be used when making a PIE object; recompile with -fPIE
/usr/bin/ld: ../meschach_lib/meschach.a(sprow.o): relocation R_X86_64_32 against `.rodata.str1.1' can not be used when making a PIE object; recompile with -fPIE
/usr/bin/ld: ../meschach_lib/meschach.a(iter0.o): relocation R_X86_64_32 against `.rodata.str1.1' can not be used when making a PIE object; recompile with -fPIE
/usr/bin/ld: ../meschach_lib/meschach.a(zmemory.o): relocation R_X86_64_32 against `.rodata.str1.1' can not be used when making a PIE object; recompile with -fPIE
/usr/bin/ld: ../meschach_lib/meschach.a(copy.o): relocation R_X86_64_32 against `.rodata.str1.1' can not be used when making a PIE object; recompile with -fPIE
/usr/bin/ld: ../meschach_lib/meschach.a(err.o): relocation R_X86_64_32 against `.rodata.str1.1' can not be used when making a PIE object; recompile with -fPIE
/usr/bin/ld: ../meschach_lib/meschach.a(pxop.o): relocation R_X86_64_32 against `.rodata.str1.1' can not be used when making a PIE object; recompile with -fPIE
/usr/bin/ld: ../meschach_lib/meschach.a(memstat.o): relocation R_X86_64_32S against symbol `mem_connect' can not be used when making a PIE object; recompile with -fPIE
collect2: error: ld returned 1 exit status
make: *** [Makefile:33: leukocyte] Error 1
```

Solution

add the following line to the `leukocyte/meschach_lib/Makefile`

```shell
CFLAGS = -O -fPIC
```

### mummergpu

```shell
suffix-tree.cpp: In function ‘void getQueriesTexture(int, char**, size_t*, int**, char***, int**, unsigned int*, unsigned int*, unsigned int, int, bool)’:
suffix-tree.cpp:1764:26: error: ‘read’ was not declared in this scope
     while ((bytes_read = read(qfile, buf, sizeof(buf))) != 0)
                          ^~~~
suffix-tree.cpp:1764:26: note: suggested alternative: ‘fread’
     while ((bytes_read = read(qfile, buf, sizeof(buf))) != 0)
                          ^~~~
                          fread
suffix-tree.cpp:1807:34: error: ‘lseek’ was not declared in this scope
                     off_t seek = lseek(qfile, -(bytes_read - i), SEEK_CUR);
                                  ^~~~~
suffix-tree.cpp:1807:34: note: suggested alternative: ‘seek’
                     off_t seek = lseek(qfile, -(bytes_read - i), SEEK_CUR);
                                  ^~~~~
                                  seek
```

add `#include <unistd.h>` to the `suffix-tree.cpp`
