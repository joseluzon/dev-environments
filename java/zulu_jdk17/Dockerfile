ARG VARIANT=latest
FROM joseluzon/ubuntu-base:${VARIANT}

ARG ZULU_FX_VERSION=17.30.15
ARG JDK_VERSION=17.0.1
ARG ZULU_JDK_JFX=https://cdn.azul.com/zulu/bin/zulu${ZULU_FX_VERSION}-ca-fx-jdk${JDK_VERSION}-linux_x64.tar.gz
ARG MAVEN_VERSION=3.8.6
ARG MAVEN_PACKAGE=https://downloads.apache.org/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz

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
ENV M2 $M2_HOME/bin
ENV MAVEN_HOME /opt/maven
ENV MAVEN_OPTS -Dmaven.multiModuleProjectDirectory=$M2_HOME
ENV PATH $M2_HOME:$M2:$PATH

# X11
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends x11-apps libgtk-3-0 libxtst6
    