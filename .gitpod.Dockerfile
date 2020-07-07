FROM gitpod/workspace-full

RUN git clone https://github.com/SWI-Prolog/swipl-devel.git

WORKDIR $HOME/swipl-devel
RUN git submodule update --init
RUN mkdir build \
    && cd build \
    && cmake -DCMAKE_INSTALL_PREFIX=/usr/local .. \
    && make \
    && ctest -j 4 \
    && sudo make install
