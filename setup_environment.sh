export GPUAPPS_SETUP_ENVIRONMENT_WAS_RUN=
# Get repo root path
# involve geting the path of sourced script
# `BASH_SOURCE` works for bash, `-${(%):-%N}}` works for zsh
export REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE:-${(%):-%N}}")" && pwd)"

# Get cuda install path
NVCC_PATH=`which nvcc`;
if [ $? != 0 ]; then
    echo "";
    echo "ERROR ** nvcc (from CUDA Toolkit) was not found in PATH";
    echo "Try adding $(CUDA_INSTALL_PATH)/bin/ to your PATH environment variable. e.g /usr/local/cuda-11.0/bin";
    return
fi
export CUDA_INSTALL_PATH=$(dirname $(dirname $NVCC_PATH))
export CUDA_PATH=$CUDA_INSTALL_PATH
export CUDA_DIR=$CUDA_PATH

# Set up environment variables for make
CUDA_VERSION=`nvcc --version | grep release | sed -re 's/.*release ([0-9]+\.[0-9]+).*/\1/'`;
CUDA_VERSION_MAJOR=`nvcc --version | grep release | sed -re 's/.*release ([0-9]+)\..*/\1/'`;
BINDIR=$REPO_ROOT/bin/$CUDA_VERSION
BINSUBDIR=release
export BIN=$BINDIR/$BINSUBDIR

GENCODE_SM10="-gencode arch=compute_10,code=sm_10"
GENCODE_SM13="-gencode arch=compute_13,code=sm_13"
GENCODE_SM20="-gencode arch=compute_20,code=sm_20"
GENCODE_SM30="-gencode arch=compute_30,code=sm_30"
GENCODE_SM35="-gencode arch=compute_35,code=sm_35"
GENCODE_SM50="-gencode arch=compute_50,code=sm_50"
GENCODE_SM60="-gencode arch=compute_60,code=sm_60"
GENCODE_SM62="-gencode arch=compute_62,code=sm_62"
GENCODE_SM70="-gencode arch=compute_70,code=sm_70"
GENCODE_SM75="-gencode arch=compute_75,code=sm_75"
GENCODE_SM80="-gencode arch=compute_80,code=sm_80"

# change this to your desired GPU architecture
export ARCH="$GENCODE_SM60 $GENCODE_SM70 $GENCODE_SM80"

echo "[Summary]:"
echo "\tCUDA_PATH = $CUDA_PATH"
echo "\tGENCODE_FLAGS = $GENCODE_FLAGS"
echo "\tBIN = $BIN"
export GPUAPPS_SETUP_ENVIRONMENT_WAS_RUN=1
