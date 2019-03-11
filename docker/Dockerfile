FROM debian:stretch
LABEL maintainer="BitBrainCoin Developers <dev@bitbraincoin.org>"
LABEL description="Dockerised BitBrainCoinCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
