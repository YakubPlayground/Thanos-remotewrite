#!/bin/bash


# Add Bitnami Repository
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update

# Install Prometheus
helm install prometheus bitnami/prometheus --namespace monitoring

kubectl get pods -n monitoring