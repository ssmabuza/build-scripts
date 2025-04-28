#!/bin/bash

MFEM_PDIR="${HOME}/software/mfem"

rm -rf CMakeCache.txt CMakeFiles 
\
cmake \
      -D ENABLE_MPI=ON \
      -D CMAKE_INSTALL_PREFIX="${HOME}/software/mfem" \
      -D CMAKE_C_COMPILER:FILEPATH=mpicc \
      -D HYPRE_INCLUDE_DIR="${MFEM_PDIR}/include" \
      -D HYPRE_LIBRARY_DIR="${MFEM_PDIR}/lib" \
      -D ENABLE_HYPRE:BOOL=OFF \
      -D ENABLE_PETSC:BOOL=OFF \
      -D SUNDIALS_INDEX_SIZE=32 \
      -D LAPACK_LIBRARIES:FILEPATH="/usr/lib/x86_64-linux-gnu/liblapack.so" \
../sundials
