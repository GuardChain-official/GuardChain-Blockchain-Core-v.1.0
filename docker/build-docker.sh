#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-guardchainpay/guardchaind-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/guardchaind docker/bin/
cp $BUILD_DIR/src/guardchain-cli docker/bin/
cp $BUILD_DIR/src/guardchain-tx docker/bin/
strip docker/bin/guardchaind
strip docker/bin/guardchain-cli
strip docker/bin/guardchain-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
