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

declare -A PORT_MAPPING=(
    ["prometheus-alertmanager"]="9093"
    ["prometheus-server"]="9090"
    ["thanos-frontend-query"]="10902 10901"
    ["thanos-frontend-query-frontend"]="9090"
    ["thanos-query"]="10902 10901"
    ["thanos-query-frontend"]="9090"
    ["thanos-query-query"]="10902 10901"
    ["thanos-query-query-frontend"]="9090"
    ["thanos-receiver-query"]="10902 10901"
    ["thanos-receiver-query-frontend"]="9090"
    ["thanos-remote-write-query"]="10902 10901"
    ["thanos-remote-write-query-frontend"]="9090"
    ["thanos-storage-gateway-query"]="10902 10901"
    ["thanos-storage-gateway-query-frontend"]="9090"
)

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
                LOCAL_PORT=${PORT_MAPPING[$SERVICE_NAME]}
                echo "Port forwarding $SERVICE_NAME from $NODE_PORT to $TARGET_PORT in tmux session $SESSION_NAME using local port $LOCAL_PORT"
                if ! tmux new-session -d -s "$SESSION_NAME" "kubectl port-forward svc/$SERVICE_NAME $LOCAL_PORT:$TARGET_PORT -n $NAMESPACE; sleep 3600"; then
                    echo "Error occurred while port forwarding $SERVICE_NAME from $NODE_PORT to $TARGET_PORT"
                    exit 1
                fi
                echo "Port forwarding started for $SERVICE_NAME from $NODE_PORT to $TARGET_PORT using local port $LOCAL_PORT"
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