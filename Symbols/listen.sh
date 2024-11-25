#!/bin/bash

NAMESPACE="monitoring"

usage() {
    echo "Usage: $0 -n <namespace>"
    exit 1
}

while getopts "n:" opt; do
    case $opt in
        n) NAMESPACE=$OPTARG ;;
        *) usage ;;
    esac
done

echo "Checking NodePort and target port for all services in namespace: $NAMESPACE"

SERVICES=$(kubectl get svc -n $NAMESPACE -o jsonpath='{.items[*].metadata.name}')

for SERVICE_NAME in $SERVICES; do
    echo "Checking ports for service: $SERVICE_NAME"
    kubectl get svc $SERVICE_NAME -n $NAMESPACE -o jsonpath='{range .spec.ports[*]}{.port}{" -> "}{.nodePort}{" (NodePort), targetPort: "}{.targetPort}{"\n"}{end}'
done