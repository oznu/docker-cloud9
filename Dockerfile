FROM oznu/s6-debian:latest

RUN apt-get update \
  && apt-get install -y openssh-server git bash openssl g++ make curl wget python gnupg nginx apache2-utils \
  && curl -sL https://deb.nodesource.com/setup_8.x | bash - \
  && apt-get install -y nodejs \
  && npm install -g npm@4.6.1 \
  && git clone https://github.com/c9/core.git /app \
  && cd /app \
  && scripts/install-sdk.sh

WORKDIR /workspace

VOLUME ["/workspace"]

COPY root /
