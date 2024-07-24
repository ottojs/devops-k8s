#!/usr/bin/env bash

# Create Namespace
kubectl apply -f ./1_backend.namespace.yaml;

# Switch to Namespace
# Not Strictly Necessary, but Clarifies / Safeguards
kubectl config set-context --current --namespace="backend";

# Create Deployment
kubectl apply -f ./2_backend.deployment.yaml;

# Create Service
kubectl apply -f ./3_backend.service.yaml;

# Install Certificate
# ./4_secret_cert.create.sh;

# Create Ingress (HTTPS)
kubectl apply -f ./5b_backend.https.letsencrypt.ingress.yaml;
# kubectl apply -f ./5c_backend.https.custom.ingress.yaml;

# Switch Back to "default" Namespace
kubectl config set-context --current --namespace="default";
