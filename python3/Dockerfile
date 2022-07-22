ARG VARIANT=latest
FROM joseluzon/ubuntu-base:${VARIANT}

# Python 3
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends python3 python3-pip
