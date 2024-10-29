DeepBench
=============

[DeepBench Repository](https://github.com/baidu-research/DeepBench)

## Getting the Source

DeepBench is included as a submodule in this project. If you didn't clone the submodule when you initially cloned the repository, you can initialize it with:

```shell
git submodule init
```

Since no significant modifications were made to the original DeepBench, maintaining a separate fork would be excessive. Instead, you can clone the source and patch it with the provided patch file:

```shell
git am patch/*.patch
```
