#!/bin/bash

# Namespace for Thanos services
NAMESPACE="monitoring"


helm repo update

# Create Thanos Service
helm install thanos bitnami/thanos --namespace $NAMESPACE

# Create Thanos Frontend
helm install thanos-frontend bitnami/thanos --namespace $NAMESPACE --set component=storegateway

# Create Thanos Query
helm install thanos-query bitnami/thanos --namespace $NAMESPACE --set component=query

# Create Thanos Receiver
helm install thanos-receiver bitnami/thanos --namespace $NAMESPACE --set component=receive

# Create Thanos Storage Gateway
helm install thanos-storage-gateway bitnami/thanos --namespace $NAMESPACE --set component=storegateway

# Create Alertmanager for Thanos Ruler
helm install alertmanager bitnami/alertmanager --namespace $NAMESPACE

# Create Remote-Write Service for Thanos and Prometheus
helm install thanos-remote-write bitnami/thanos --namespace $NAMESPACE --set component=sidecar