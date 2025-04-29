#!/bin/bash

MPI_DIR="/usr"
MFEM_PDIR="${SOFTWARE}/mfem"

rm -rf CMakeCache.txt CMakeFiles 
\
cmake \
      -D MFEM_USE_MPI=YES \
      -D MPI_CXX=/usr/bin/mpic++ \
      -D CMAKE_INSTALL_PREFIX="${SOFTWARE}/mfem" \
      -D CMAKE_CXX_COMPILER:FILEPATH=/usr/bin/mpicxx \
      -D CMAKE_C_COMPILER:FILEPATH=/usr/bin/mpicc \
      -D HYPRE_DIR="${MFEM_PDIR}" \
      -D METIS_DIR="${MFEM_PDIR}" \
      -D PETSC_DIR="${MFEM_PDIR}" \
      -D PETSC_ARCH="" \
      -D LAPACK_LIBRARIES:FILEPATH="/usr/lib/x86_64-linux-gnu/liblapack.so" \
      -D BLAS_LIBRARIES:FILEPATH="/usr/lib/x86_64-linux-gnu/libblas.so" \
      -D MFEM_USE_PETSC:BOOL=ON \
      -D MFEM_USE_SUNDIALS:BOOL=ON \
../mfem

