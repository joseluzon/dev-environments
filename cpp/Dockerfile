ARG VARIANT=latest
FROM joseluzon/ubuntu-base:${VARIANT}

# C++ tools
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends cmake gdb cppcheck clang clang-format clang-tidy lldb llvm libasan6 valgrind doxygen libboost-dev

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends python3 python3-pip

RUN pip3 install cpplint cmake-format pyyaml
