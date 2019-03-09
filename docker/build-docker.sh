#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-bitbraincoinpay/bitbraincoind-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/bitbraincoind docker/bin/
cp $BUILD_DIR/src/bitbraincoin-cli docker/bin/
cp $BUILD_DIR/src/bitbraincoin-tx docker/bin/
strip docker/bin/bitbraincoind
strip docker/bin/bitbraincoin-cli
strip docker/bin/bitbraincoin-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
