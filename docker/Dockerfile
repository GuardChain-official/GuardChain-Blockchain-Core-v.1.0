FROM debian:stretch
LABEL maintainer="GuardChain Developers <dev@guardchain.org>"
LABEL description="Dockerised GuardChainCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
