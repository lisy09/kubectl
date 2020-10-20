#!/usr/bin/env bash

set -ex
set -o pipefail

IMAGE_REPO=lisy09kubesphere
IMAGE_NAME=kubectl
IMAGE_TAG=v1.0.0
DOCKER_PLATFORMS=linux/amd64,linux/arm/v7,linux/arm64

echo 'Build and push ks-apiserver'
docker buildx build \
--file Dockerfile \
--tag $IMAGE_REPO/$IMAGE_NAME:$IMAGE_TAG \
--platform $DOCKER_PLATFORMS \
--push .
