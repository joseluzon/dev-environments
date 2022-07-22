ARG VARIANT=latest
FROM joseluzon/cpp-base:${VARIANT}

# Qt5
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends qt5-default libqt5opengl*

# X11
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends x11-apps libgtk-3-0

# OpenGL for IMGUI
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#    && apt-get -y install --no-install-recommends pkg-config libgl1-mesa-dev libglfw3 libglfw3-dev