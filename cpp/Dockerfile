# [Choice] Ubuntu version: 20.04, 18.04
ARG VARIANT=20.04
FROM ubuntu:${VARIANT}

# Install needed packages. Use a separate RUN statement to add your own dependencies.
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/*

# [Optional] Uncomment this section to install additional OS packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>

# X11 libs:
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#    && apt-get -y install --no-install-recommends libx11-dev libxext-dev libxrender-dev libxtst-dev

# build essentials:
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends build-essential cmake cppcheck valgrind clang clang-format clang-tidy lldb llvm libasan6 doxygen git gdb libboost-dev

# Conan C/C++ Package Manager: https://conan.io/
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends python3 python3-pip

RUN pip3 install conan

# cpplint
RUN pip3 install cpplint

# OpenGL for IMGUI
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#    && apt-get -y install --no-install-recommends pkg-config libgl1-mesa-dev libglfw3 libglfw3-dev