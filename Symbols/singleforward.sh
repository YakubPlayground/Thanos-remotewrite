#!/bin/bash

NAMESPACE="monitoring"
GRPC_PORT=9090

# Get all pod names in the monitoring namespace
PODS=$(kubectl get pods -n $NAMESPACE -o jsonpath='{.items[*].metadata.name}')

# Forward gRPC port for each pod
for POD in $PODS; {
    echo "Setting up port forwarding for pod: $POD"
    kubectl port-forward -n $NAMESPACE $POD $GRPC_PORT:$GRPC_PORT &
}

echo "Port forwarding setup complete."