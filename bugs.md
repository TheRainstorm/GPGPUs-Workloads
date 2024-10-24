# Notes

record errors when compiling benchmarks

## cuda samples

Some apps use cuda samples header files, which are not included in the cuda toolkit

https://docs.nvidia.com/cuda/cuda-samples/index.html
> As of CUDA 11.6, all CUDA samples are now only available on the GitHub repository. They are no longer available via CUDA toolkit.

## "undefined reference to `__gxx_personality_v0'" and g++

Errors when compiling rodinia-3.1 `b+tree`
https://stackoverflow.com/questions/6045809/link-error-undefined-reference-to-gxx-personality-v0-and-g

add the following flag to the g++ command
```shell
-lstdc++
```
