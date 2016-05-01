FROM phusion/baseimage

MAINTAINER Alvin Henrick <alvinhenrick@aol.com>

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
gcc \
g++ \
libkrb5-dev \
libmysqlclient-dev \
libssl-dev \
libsasl2-dev \
libsasl2-modules-gssapi-mit \
libsqlite3-dev \
libtidy-0.99-0 \
libxml2-dev \
libxslt-dev \
make \
libldap2-dev \
python-dev \
python-setuptools \
libgmp3-dev \
wget curl \
net-tools \
git \
unzip jq coreutils

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Install Oracle Java.
RUN \
  echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-java7-installer && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /var/cache/oracle-jdk7-installer && \
  rm -rf /tmp/* && \
  rm -rf /var/tmp/*

ENV JAVA_HOME /usr/lib/jvm/java-7-oracle

ENV ANT_VERSION 1.9.7
RUN cd && \
    wget -q http://www.us.apache.org/dist/ant/binaries/apache-ant-${ANT_VERSION}-bin.tar.gz && \
    tar -xzf apache-ant-${ANT_VERSION}-bin.tar.gz && \
    mv apache-ant-${ANT_VERSION} /opt/ant && \
    rm apache-ant-${ANT_VERSION}-bin.tar.gz
ENV ANT_HOME /opt/ant
ENV PATH ${PATH}:/opt/ant/bin

ENV MAVEN_VERSION 3.3.9
RUN cd && \
    wget -q http://www.us.apache.org/dist/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz && \
    tar -xzf apache-maven-${MAVEN_VERSION}-bin.tar.gz && \
    mv apache-maven-${MAVEN_VERSION} /opt/maven && \
    rm apache-maven-${MAVEN_VERSION}-bin.tar.gz
ENV MAVEN_HOME /opt/maven
ENV PATH ${PATH}:/opt/maven/bin

CMD ["bash"]