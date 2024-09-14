#!/bin/bash

cd Trilinos \
&& git checkout master && git pull \
&& git checkout develop && git pull \
&& cd ../build && ../configure_trilinos.sh && make -j2 install
