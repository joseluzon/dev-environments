# [Choice] Ubuntu version: 20.04, 18.04
ARG VARIANT=20.04
FROM ubuntu:${VARIANT}

ARG NODEJS_VERSION=16.15.0
ARG NODEJS_PACKAGE=https://nodejs.org/dist/v${NODEJS_VERSION}/node-v${NODEJS_VERSION}-linux-x64.tar.xz

# Install needed packages. Use a separate RUN statement to add your own dependencies.
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/*

# [Optional] Uncomment this section to install additional OS packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \28
#     && apt-get -y install --no-install-recommends <your-package-list-here>

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends build-essential git curl ca-certificates wget

# Node.js:
RUN wget ${NODEJS_PACKAGE} -P /tmp && ls -l /tmp/node* && \
    tar -xJvf /tmp/node-v${NODEJS_VERSION}-linux-x64.tar.xz -C /opt && \
    ln -s /opt/node-v${NODEJS_VERSION}-linux-x64 /opt/nodejs

ENV NODEJS_HOME /opt/nodejs
ENV PATH $NODEJS_HOME:$NODEJS_HOME/bin:$PATH