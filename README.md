# GPGPUs-Workloads
A collection of GPU applications for benchmarking and architecture research

Features:

- Most of the benchmarks' Makefiles have been rewritten to compile in a standardized manner, making it easy to modify the compilation parameters.

# Compile

## Use seperate benchmarks

Each workload has readme file that explains how to compile and run it.

## Top makefile

There is a top makefile used to compile benchmarks and output results in the `bin` directory.

1. source `setup_environment.sh`. This will setup CUDA installation path and setup some env varibales to control the compiling.

```shell
source setup_environment.sh
```

2. compile desired benchmark

```shell
make rodinia-3.1
```

3. check executale files in `bin` directory, e.g `bin/11.0/release`

With different versions of CUDA and GPUs, not all programs are guaranteed to compile successfully (for example, due to API changes, some old programs may become incompatible). It's best to compile the program and then check what is in the bin directory. Based on your needs, decide whether or not to fix the compilation errors.

### Compile for different GPU architecture

Most benchmark's makefile is rewrite to use `ARCH` when compiling. You can change `ARCH` in `setup_environment.sh` to match your GPU architecture.

# Run and Data files

Most applications have a `how_to_run.txt`/`run` file that explains how to run the application.

Some application need data files to run. Since the data files are too large, the data files is not include.

Most collected benchmarks have infomation on how to get the data files. You can download the data files from the original source.

Data files will also be provided in a public cloud storage in the future.
