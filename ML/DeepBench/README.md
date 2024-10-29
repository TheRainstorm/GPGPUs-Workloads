DeepBench
=============

[DeepBench Repository](https://github.com/baidu-research/DeepBench)

## Getting the Source

DeepBench is included as a submodule in this project. If you didn't clone the submodule when you initially cloned the repository, you can initialize it with:

```shell
git submodule init
```

Since no significant modifications were made to the original DeepBench, maintaining a separate fork would be excessive. Instead, you can clone the source and replace the necessary files found in the patch directory.

## About cuDNN Compatibility

This project has been tested with cuDNN version 7. Note that cuDNN 8 is not compatible.

```shell
sudo apt install libcudnn7-dev
```
