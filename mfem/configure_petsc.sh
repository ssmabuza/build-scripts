#!/bin/bash

./configure --configModules=PETSc.Configure --optionsModule=config.compilerOptions --configModules=PETSc.Configure --optionsModule=config.compilerOptions --with-cc=mpicc --with-cxx=mpicxx --with-clanguage=cxx --with-fc=mpif90 --with-blas-lib=/usr/lib/x86_64-linux-gnu/libblas.so --with-lapack-lib=/usr/lib/x86_64-linux-gnu/liblapack.so --with-c2html=0 --with-debugging=0 --prefix=$HOME/software/mfem
