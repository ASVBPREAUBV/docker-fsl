#!/usr/bin/env bash
IMAGE_NAME=docker-fsl
CONTAINER_NAME=docker-fsl-container
CONTAINER_ID=$(docker ps -aqf "name=$CONTAINER_NAME")
docker rm -f $CONTAINER_ID
docker rmi -f $IMAGE_NAME
docker build -t $IMAGE_NAME .
docker run --name $CONTAINER_NAME $IMAGE_NAME:latest