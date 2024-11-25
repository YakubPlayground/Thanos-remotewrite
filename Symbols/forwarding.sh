#!/bin/bash
NAMESPACE="monitoring"

echo "Fetching services in namespace: $NAMESPACE"
SERVICES=$(kubectl get svc -n $NAMESPACE -o jsonpath='{range .items[*]}{.metadata.name}{" "}{range .spec.ports[*]}{.port}{" "}{.nodePort}{" "}{end}{"\n"}{end}')
echo "Services fetched: $SERVICES"

for SERVICE in $SERVICES; do
    (
        SERVICE_NAME=$(echo $SERVICE | awk '{print $1}')
        PORTS=$(echo $SERVICE | awk '{$1=""; print $0}')
        
        echo "Processing service: $SERVICE_NAME"
        
        while read -r TARGET_PORT NODE_PORT; do
            echo "Target port: $TARGET_PORT"
            echo "Node port: $NODE_PORT"
            
            if [ -n "$NODE_PORT" ]; then
                echo "Port forwarding $SERVICE_NAME from $NODE_PORT to $TARGET_PORT"
                kubectl port-forward svc/$SERVICE_NAME $NODE_PORT:$TARGET_PORT -n $NAMESPACE &
            else
                echo "No node port found for target port $TARGET_PORT of service $SERVICE_NAME, skipping port forwarding"
            fi
        done <<< "$PORTS"
    ) &
done

echo "Waiting for all port-forwarding processes to complete"
wait
echo "All port-forwarding processes completed"