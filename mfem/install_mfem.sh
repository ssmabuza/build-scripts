#!/bin/bash

git clone git@github.com:mfem/mfem.git \
&& git clone git@github.com:LLNL/sundials.git \
&& git clone -b release https://gitlab.com/petsc/petsc.git petsc \
&& wget https://karypis.github.io/glaros/files/sw/metis/metis-5.1.0.tar.gz \
&& git clone git@github.com:hypre-space/hypre.git \
&& mkdir build_{mfem,sundials} \
&& tar xvf metis-5.1.0.tar.gz && cd metis-5.1.0 && make config cc=mpicc shared=true prefix=$SOFTWARE/mfem && make -j4 install \
&& cd ../petsc && ../configure_petsc.sh && make -j4 && make -j4 install \
&& cd ../hypre/src && ./configure CC=mpicc --prefix=$SOFTWARE/mfem && make -j4 install \
&& cd ../../build_sundials && ../configure_sundials.sh && make -j4 install \
&& cd ../build_mfem && ../configure_mfem.sh && make -j4 install
