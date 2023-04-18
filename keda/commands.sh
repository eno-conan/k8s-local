#!/bin/bash
kubectl apply -f application.yaml
docker tag demo-keda:latest 109923486398.dkr.ecr.ap-northeast-1.amazonaws.com/demo-keda:latest
aws ecr get-login-password --region ap-northeast-1 | docker login --username AWS --password-stdin 109923486398.dkr.ecr.ap-northeast-1.amazonaws.com/demo-keda
docker push 109923486398.dkr.ecr.ap-northeast-1.amazonaws.com/demo-keda:latest