#!/bin/bash

NAMESPACE="monitoring"
PODS=$(kubectl get pods --namespace $NAMESPACE --field-selector=status.phase=Running -o jsonpath='{.items[*].metadata.name}')

for POD in $PODS; do
    echo "Listening ports for pod: $POD"
    kubectl logs $POD -n $NAMESPACE | grep -i 'listening on' | awk -F'address=' '{print $2}' | awk '{print $1}'
    echo ""
done

