FROM gitpod/workspace-full

RUN brew install ninja
RUN git clone https://github.com/SWI-Prolog/swipl-devel.git

WORKDIR $HOME/swipl-devel
RUN git submodule update --init

RUN mkdir build
WORKDIR $HOME/swipl-devel/build
