ARG VARIANT=latest
FROM joseluzon/ubuntu-base:${VARIANT}

ARG AMAZON_CORRETTO_JDK17=https://corretto.aws/downloads/latest/amazon-corretto-17-x64-linux-jdk.tar.gz
ARG MAVEN_VERSION=3.9.4
ARG MAVEN_PACKAGE=https://downloads.apache.org/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz
ARG GRADLE_VERSION=8.3
ARG GRADLE_PACKAGE=https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip

# Zulu JDK-JFX:
RUN wget ${AMAZON_CORRETTO_JDK17} -P /tmp && ls -l /tmp/amazon* && \
    tar -xzvf /tmp/amazon*.tar.gz -C /opt && \
    ln -s /opt/amazon* /opt/java_home

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

RUN wget ${GRADLE_PACKAGE} -P /tmp && ls -l /tmp/*gradle* && \
    unzip /tmp/gradle-${GRADLE_VERSION}-bin.zip -d /opt && \
    ln -s /opt/gradle-${GRADLE_VERSION} /opt/gradle

ENV GRADLE_HOME /opt/gradle
ENV PATH $GRADLE_HOME:$GRADLE_HOME/bin:$PATH

# X11
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends x11-apps libgtk-3-0 libxtst6
    