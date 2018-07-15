FROM ubuntu
MAINTAINER Travis Fields

RUN apt-get update && apt-get -y upgrade && \
    apt-get -y install curl git vim build-essential software-properties-common && \
    add-apt-repository -y ppa:ethereum/ethereum
# Install node and dependencies
RUN curl -sL https://deb.nodesource.com/setup_9.x | bash -
RUN apt-get install -y nodejs && \
    npm install -g truffle && \
    npm install -g solc && \
    npm install -g ganache-cli
RUN apt-get install -y ethereum
RUN mkdir MetaCoin
WORKDIR /MetaCoin
CMD ["/bin/bash"]
