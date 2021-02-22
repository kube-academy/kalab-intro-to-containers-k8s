#!/bin/sh

docker build -t intro-to-containers .
docker tag intro-to-containers localhost:5000/intro-to-containers
docker push localhost:5000/intro-to-containers

