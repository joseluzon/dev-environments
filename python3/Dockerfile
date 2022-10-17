ARG VARIANT=latest
FROM joseluzon/ubuntu-base:${VARIANT}

# Python 3
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends gcc python3 python3-dev python3-pip pipenv
