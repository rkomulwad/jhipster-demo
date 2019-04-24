#!/bin/bash
# Files are ordered in proper order with needed wait for the dependent custom resource definitions to get initialized.
# Usage: bash kubectl-apply.sh

kubectl apply -f namespace.yml
kubectl label namespace jhipster istio-injection=enabled
kubectl apply -f store/
kubectl apply -f invoice/
kubectl apply -f notification/
kubectl apply -f product/
