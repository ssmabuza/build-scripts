#!/bin/bash

git clone git@github.com:mfem/mfem.git \
&& git clone git@github.com:LLNL/sundials.git \
&& git clone -b release https://gitlab.com/petsc/petsc.git petsc \
&& wget http://glaros.dtc.umn.edu/gkhome/fetch/sw/metis/metis-5.1.0.tar.gz \
&& tar -xvf metis-5.1.0.tar.gz && rm -f metis-5.1.0.tar.gz \
&& git clone git@github.com:hypre-space/hypre.git \
&& mkdir build_{mfem,sundials} \
&& cd metis-5.1.0 && make config cc=mpicc shared=true prefix=$HOME/Software/mfem && make -j4 install \
&& cd ../hypre/src && ./configure CC=mpicc --prefix=$HOME/Software/mfem && make -j4 install \
&& cd ../../build_sundials && ../configure_sundials.sh && make -j4 install \
&& cd ../build_mfem && ../configure_mfem.sh && make -j4 install
