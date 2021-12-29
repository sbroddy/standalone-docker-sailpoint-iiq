#!/bin/sh
docker build -t dockerized_builder \
    --build-arg build_hostname=`hostname` .
docker run -it --mount \
    type=bind,source="$(pwd)"/../../,target=/iiq \
    dockerized_builder:latest

