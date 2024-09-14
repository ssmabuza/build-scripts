#!/bin/bash

cd Trilinos \
&& git checkout master && git pull \
&& git checkout develop && git pull \
&& cd DrekarBase && git pull \
&& cd ../../build && ../configure.sh && make -j2 install
