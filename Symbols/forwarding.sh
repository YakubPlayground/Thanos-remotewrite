#!/bin/bash
set -e

NAMESPACE="monitoring"

echo "Fetching services in namespace: $NAMESPACE"
SERVICES=$(kubectl get svc -n monitoring -o jsonpath='{range .items[*]}{.metadata.name}{" "}{range .spec.ports[*]}{.port}{" "}{.nodePort}{" "}{end}{"\n"}{end}')
echo "Services fetched: $SERVICES"
echo ""

for SERVICE in $SERVICES; do
    (
        SERVICE_NAME=$(echo $SERVICE | awk '{print $1}')
        PORTS=$(echo $SERVICE | awk '{$1=""; print substr($0,2)}')
        
        echo "Processing service: $SERVICE_NAME"
        echo ""
        
        while read -r TARGET_PORT NODE_PORT; do
            echo "Target port: $TARGET_PORT"
            echo "Node port: $NODE_PORT"
            
            if [ -n "$NODE_PORT" ]; then
                SESSION_NAME="${SERVICE_NAME}_${TARGET_PORT}_${NODE_PORT}"
                echo "Port forwarding $SERVICE_NAME from $NODE_PORT to $TARGET_PORT in tmux session $SESSION_NAME"
                if ! tmux new-session -d -s "$SESSION_NAME" "kubectl port-forward svc/$SERVICE_NAME $NODE_PORT:$TARGET_PORT -n $NAMESPACE"; then
                    echo "Error occurred while port forwarding $SERVICE_NAME from $NODE_PORT to $TARGET_PORT"
                    exit 1
                fi
                echo "Port forwarding started for $SERVICE_NAME from $NODE_PORT to $TARGET_PORT"
            else
                echo "No node port found for target port $TARGET_PORT of service $SERVICE_NAME, skipping port forwarding"
            fi
            echo ""
        done <<< "$PORTS"
        echo ""
    ) &
done

echo "Waiting for all port-forwarding processes to complete"
wait
echo "All port-forwarding processes completed"
echo ""

echo "Listing all tmux sessions:"
tmux list-sessions