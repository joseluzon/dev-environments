ARG VARIANT=latest
FROM joseluzon/python3-base:${VARIANT}

# Qt5
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends qt5-default python3-pyqt5

RUN pip3 install --upgrade pip

# X11
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends x11-apps libgtk-3-0
