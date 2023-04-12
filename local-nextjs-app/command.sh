#!/bin/bash
yarn create next-app --example with-docker nextjs-k8s-app
kubectl create namespace nextjs-k8s
docker build -t enoconan/nextjs-k8s-app . && docker push enoconan/nextjs-k8s-app
kubectl create namespace nextjs-k8s
kubectl apply -f deployment.yaml -n nextjs-k8s
kubectl get deploy -n nextjs-k8s
# create service and allowed access outside cluster
kubectl expose deployment -n nextjs-k8s nextjs-k8s-app-deployment --type NodePort --port 80 --target-port 3000