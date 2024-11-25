#!/bin/bash
SERVICES=$(kubectl get svc -n $NAMESPACE -o jsonpath='{range .items[*]}{.metadata.name}{" "}{.spec.ports[*].port}{" "}{.spec.ports[*].nodePort}{"\n"}{end}')

for SERVICE in $SERVICES; do
    SERVICE_NAME=$(echo $SERVICE | awk '{print $1}')
    TARGET_PORT=$(echo $SERVICE | awk '{print $2}')
    NODE_PORT=$(echo $SERVICE | awk '{print $3}')
    
    if [ -n "$NODE_PORT" ]; then
        echo "Port forwarding $SERVICE_NAME from $NODE_PORT to $TARGET_PORT"
        kubectl port-forward svc/$SERVICE_NAME $NODE_PORT:$TARGET_PORT -n $NAMESPACE &
    fi
done