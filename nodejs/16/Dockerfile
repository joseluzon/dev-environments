ARG VARIANT=latest
FROM joseluzon/ubuntu-base:${VARIANT}

ARG NODEJS_VERSION=16.16.0
ARG NODEJS_PACKAGE=https://nodejs.org/dist/v${NODEJS_VERSION}/node-v${NODEJS_VERSION}-linux-x64.tar.xz

# Node.js:
RUN wget ${NODEJS_PACKAGE} -P /tmp && ls -l /tmp/node* && \
    tar -xJvf /tmp/node-v${NODEJS_VERSION}-linux-x64.tar.xz -C /opt && \
    ln -s /opt/node-v${NODEJS_VERSION}-linux-x64 /opt/nodejs

ENV NODEJS_HOME /opt/nodejs
ENV PATH $NODEJS_HOME:$NODEJS_HOME/bin:$PATH