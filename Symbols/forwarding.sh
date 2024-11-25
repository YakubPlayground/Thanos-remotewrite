#!/bin/bash
set -e

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

echo "Fetching services in namespace: $NAMESPACE"
SERVICES=$(kubectl get svc -n $NAMESPACE -o jsonpath='{.items[*].metadata.name}')
echo "Services fetched: $SERVICES"
echo ""

for SERVICE_NAME in $SERVICES; do
    (
        echo "Processing service: $SERVICE_NAME"
        echo ""
        
        PORTS=$(kubectl get svc $SERVICE_NAME -n $NAMESPACE -o jsonpath='{range .spec.ports[*]}{.port}{" "}{.nodePort}{" "}{.targetPort}{"\n"}{end}')
        
        while read -r PORT NODE_PORT TARGET_PORT; do
            echo "Port: $PORT"
            echo "Node port: $NODE_PORT"
            echo "Target port: $TARGET_PORT"
            
            if [ -n "$NODE_PORT" ]; then
                SESSION_NAME="${SERVICE_NAME}_${PORT}_${NODE_PORT}"
                echo "Port forwarding $SERVICE_NAME from $NODE_PORT to $TARGET_PORT in tmux session $SESSION_NAME"
                if ! tmux new-session -d -s "$SESSION_NAME" "kubectl port-forward svc/$SERVICE_NAME $NODE_PORT:$TARGET_PORT -n $NAMESPACE"; then
                    echo "Error occurred while port forwarding $SERVICE_NAME from $NODE_PORT to $TARGET_PORT"
                    exit 1
                fi
                echo "Port forwarding started for $SERVICE_NAME from $NODE_PORT to $TARGET_PORT"
            else
                echo "No node port found for port $PORT of service $SERVICE_NAME, skipping port forwarding"
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