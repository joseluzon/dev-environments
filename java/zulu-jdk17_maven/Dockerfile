# [Choice] Ubuntu version: 20.04, 18.04
ARG VARIANT=20.04
FROM ubuntu:${VARIANT}

ARG ZULU_FX_VERSION=17.30.15
ARG JDK_VERSION=17.0.1
ARG ZULU_JDK_JFX=https://cdn.azul.com/zulu/bin/zulu${ZULU_FX_VERSION}-ca-fx-jdk${JDK_VERSION}-linux_x64.tar.gz
ARG MAVEN_VERSION=3.8.5
ARG MAVEN_PACKAGE=https://downloads.apache.org/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz

# Install needed packages. Use a separate RUN statement to add your own dependencies.
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/*

# [Optional] Uncomment this section to install additional OS packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \28
#     && apt-get -y install --no-install-recommends <your-package-list-here>

# Base 
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends build-essential curl ca-certificates wget git

# Net Tools
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends net-tools iputils-ping

# Zulu JDK-JFX:
RUN wget ${ZULU_JDK_JFX} -P /tmp && ls -l /tmp/zulu* && \
    tar -xzvf /tmp/zulu*.tar.gz -C /opt && \
    ln -s /opt/zulu* /opt/java_home

ENV JAVA_HOME /opt/java_home
ENV PATH $JAVA_HOME:$JAVA_HOME/bin:$PATH

# maven:
RUN wget ${MAVEN_PACKAGE} -P /tmp && ls -l /tmp/*maven* && \
    tar xf /tmp/apache-maven-${MAVEN_VERSION}-bin.tar.gz -C /opt && \
    ln -s /opt/apache-maven-${MAVEN_VERSION} /opt/maven

ENV M2_HOME /opt/maven
ENV MAVEN_HOME /opt/maven
ENV PATH $MAVEN_HOME:$MAVEN_HOME/bin:$PATH

# X11
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends x11-apps