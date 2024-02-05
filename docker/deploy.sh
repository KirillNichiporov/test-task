#!/bin/bash

IMAGE_TAG=kirill123433353463/test:v5
NAMESPACE=http-server
RELEASE_NAME=http-server
CHART_NAME=http-server
MESSAGE="Привет Мир!"

docker build -t $IMAGE_TAG .


docker push $IMAGE_TAG


helm install $RELEASE_NAME $CHART_NAME --set deployment.image=$IMAGE_TAG --set configmap.message="$MESSAGE" --create-namespace -n $NAMESPACE
