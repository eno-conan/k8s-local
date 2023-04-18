#!/bin/bash
# build image
docker build -t locust:latest ./image
# apply manifest
kubectl apply -f manifest.yaml
