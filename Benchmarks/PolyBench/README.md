## To build:

* If you want to generate code for any other  GPU architecture or add any nvcc flags, you can do so in utilities/common.mk:   

* build all applications with make command
    ```
    make all
    ```
 * you can also build specific application, for example building 2mm app:   
    ```
    make -C linear-algebra/2mm
    ```

## To run: 
* run the binary of each application directory, applications are inside ***datamining, linear-algebra,*** and ***stencils*** directories. If you want to change the input; see ***application.cuh*** file for each application before building
* see ***run_nvprof_rodinia.sh*** for running all the applications with ***nvprof*** while collecting some metrics, you can define your metrics list inside the file

## Paper: 

S. Grauer-Gray, L. Xu, R. Searles, S. Ayalasomayajula and J. Cavazos, "Auto-tuning a high-level language targeted to GPU codes," 2012 Innovative Parallel Computing (InPar), San Jose, CA, 2012, pp. 1-10, doi: 10.1109/InPar.2012.6339595.

## Source

https://www.cs.colostate.edu/~pouchet/software/polybench/GPU/index.html

* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
* PolyBench/GPU 1.0:  PolyBench Benchmarks on the GPU using CUDA, OpenCL, and HMPP. *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 

Copyright (c) 2012 University of Delaware
Contact:  Scott Grauer-Gray <sgrauerg@gmail.com>
	  Louis-Noel Pouchet <pouchet@cse.ohio-state.edu>

If using this work, please cite the following paper: 
Scott Grauer-Gray, Lifan Xu, Robert Searles, Sudhee Ayalasomayajula, and John Cavazos.  
Auto-tuning a High-Level Language Targeted to GPU Codes. 
Proceedings of Innovative Parallel Computing (InPar '12), 2012.

Paper available at http://www.eecis.udel.edu/~grauerg/


-----------------------
* Available benchmarks:
-----------------------

Convolution:
2DCONV
3DCONV

Linear Algebra:
2MM
3MM
ATAX
BICG
GEMM
GESUMMV
GRAMSCHMIDT
MVT
SYR2K
SYRK

Datamining:
CORRELATION
COVARIANCE

Stencils:
FDTD-2D

The codes are based on PolyBench 2.0 (with the exception of convolution which isn't part of PolyBench 2.0).


--------------------------------
* Instructions - to compile/run:
--------------------------------

CUDA: 
1. Set up PATH and LD_LIBRARY_PATH environment variables to point to CUDA installation 
2. Run "make" in target folder(s) with codes to generate executable(s)
3. Run the generated .exe file(s).

OpenCL:
1. Set up PATH and LD_LIBRARY_PATH environment variables to point to OpenCL installation
2. Set location of SDK in common.mk file in OpenCL folder
3. Run "make" in target folder(s) to generate executable(s)
4. Run the generated .exe file(s).

HMPP (in folder HMPPDefaultAndOptimized):
1. Change to bash shell if not currently in it.
2. Set up PATH and LD_LIBRARY_PATH environment variables to point to CUDA/OpenCL installation 
3. Set up HMPP environment variables with source hmpp-env.sh command in {HMPP_INSTALLATION}/bin folder 
4. Run "make exe" in target folder(s) with codes to generate executable(s)
5. Run generated .exe file(s).  If there's an error when running the .exe file(s), try running them with the "make" or "make run"
command in the folder. 

Default and Optimized HMPP Implementations Info:
Each HMPP code in the HMPPDefaultAndOptimized folder is given with CUDA and OpenCL targets, with the default and best found 
transformed configuration (on the NVIDIA C2050 GPU) shown.  The directory name for the best found configuration describes the 
optimizations.  The 'P' followed by loop variables gives the permutation, 'T' corresponds to tiling each loop with following 
factors, 'U' corresponds to unrolling each loop with following factors, 's' corresponds to 'split unroll' (while '_' 
corresponds to the default contiguous unroll), 'n' corresponds to 'no remainder/guarded' option for remainder loop (while '_' 
corresponds to the default remainder option).  See paper "Auto-tuning a High-Level Language Targeted to GPU Codes" for more
about the transformations and best optimized configurations.

Script to compile all codes in set:
Each folder (CUDA, OpenCL, and HMPP) contains a "compileCodes.sh" script that compiles each code in the section.
In order to use this script, adjust the environment variables set in the script to the appropriate environment variables
for the system, use "cd" to move to the folder with the script (necessary with the way the script is currently
written...), and then run the script with the "./compileCodes.sh" command.


------------------
* Modifying Codes:
------------------

Parameters such as the input sizes, data type, and threshold for GPU-CPU output comparison can be modified using constants
within the codes.  After modifying, run "make clean" then "make" on relevant code for modifications to take effect in resulting executable.

NOTES ABOUT PARAMETERS:

DATA_TYPE:
By default, the DATA_TYPE used in these codes are floats; that can be changed to doubles by changing the DATA_TYPE typedef to "double"

PERCENT_DIFF_ERROR_THRESHOLD:
The PERCENT_DIFF_ERROR_THRESHOLD refers to the percent difference (0.0-100.0) that the GPU and CPU results are allowed to differ and still 
be considered "matching"; this parameter can be adjusted for each code in the input code file.


---------------
* Contact Info: 
---------------

Contacts: Scott Grauer-Gray <sgrauerg@gmail.com>
          Louis-Noel Pouchet <pouchet@cse.ohio-state.edu>
Web address: http://www.cse.ohio-state.edu/~pouchet/software/polybench/GPU


------------------------
* Paper describing work: 
------------------------

Scott Grauer-Gray, Lifan Xu, Robert Searles, Sudhee Ayalasomayajula, and John Cavazos.  
Auto-tuning a High-Level Language Targeted to GPU Codes. 
Proceedings of Innovative Parallel Computing (InPar '12), 2012.

Paper available at http://www.eecis.udel.edu/~grauerg/


Codes are based on PolyBench codes which are able to be parallelized on the GPU; 
Original PolyBench codes available at http://www.cse.ohio-state.edu/~pouchet/software/polybench/


Acknowledgement:
This work was funded in part by the U.S. National Science Foundation through the NSF
Career award 0953667 and the Defense Advanced Research Projects Agency through the DARPA
Computer Science Study Group (CSSG).
