from ubuntu:latest

RUN apt-get update && apt-get install -y -q --no-install-recommends \
        net-tools \
        iputils-ping \
        apt-transport-https \
        build-essential \
        ca-certificates \
        curl \
        git \
        libssl-dev \
        rsyslog \ 
        wget \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get install net-tools -y

ENV NVM_DIR /usr/local/nvm
ENV NODE_VERSION 18.14.2
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash
RUN /bin/bash -c "source $NVM_DIR/nvm.sh && nvm install $NODE_VERSION && nvm use --delete-prefix $NODE_VERSION"
ENV NODE_PATH $NVM_DIR/versions/node/$NODE_VERSION/lib/node_modules
ENV PATH      $NVM_DIR/versions/node/$NODE_VERSION/bin:$PATH
