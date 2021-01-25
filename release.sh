#!/bin/bash

TAG=$1

if [ -z ${TAG} ]; then
	echo "you must specify a tag"
	exit 1;
fi

docker build -t accelerateur .
docker tag accelerateur hed854/ideagenerator:${TAG}
docker push hed854/ideagenerator:${TAG}
