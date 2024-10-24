# GPGPUs-Workloads
A collection of GPU applications for benchmarking and architecture research

Features:

- Most of the benchmarks' Makefiles have been rewritten to compile in a standardized manner, making it easy to modify the compilation parameters.

# Usage

## Use seperate benchmarks

Each workload has readme file that explains how to run it.

## Top makefile

There is a top makefile used to compile benchmarks and output results in the `bin` directory.

1. source `setup_environment.sh`. This will setup CUDA installation path and setup 

```shell
source setup_environment.sh
```

2. compile desired benchmark

```shell
make rodinia-3.1
```

3. check result in `bin` directory, e.g `bin/11.0/release`

### Compile for different GPU architecture

Most benchmark's makefile is rewrite to use `ARCH` when compiling. You can change `ARCH` in `setup_environment.sh` to match your GPU architecture.
