FROM oznu/s6-debian:latest

RUN apt-get update \
  && apt-get install -y openssh-server git bash openssl g++ make curl wget python

RUN apt-get -y install gnupg

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - \
  && apt-get install -y nodejs

RUN useradd --shell /bin/bash --home-dir /app cloud9 \
  && chown cloud9:cloud9 /app

USER cloud9

RUN curl -L https://raw.githubusercontent.com/c9/install/master/install.sh | bash

USER root

RUN mkdir /home/cloud9 \
  && usermod -d /home/cloud9 cloud9 \
  && chown cloud9:cloud9 /home/cloud9

COPY root /
