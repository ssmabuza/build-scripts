#Building GLFW:

sudo apt -y install \
doxygen \
libxrandr-dev \
libxinerama-dev \
libxcursor-dev \
libxi-dev

cmake -DCMAKE_INSTALL_PREFIX=$SOFTWARE/glfw ../glfw
make -j4
make -j4 install
