#!/bin/bash

# Namespace for Thanos and Prometheus services
NAMESPACE="monitoring"

# Mapping of pod names to their respective ports
declare -A POD_PORTS=(
    ["prometheus-alertmanager-0"]="9093"
    ["prometheus-server-8475dcbb69-jn2hb"]="9090"
    ["thanos-frontend-query-867cb577dc-5c8vn"]="9090"
    ["thanos-frontend-query-frontend-859f4f97bf-pzw8n"]="9090"
    ["thanos-query-7b9c7974c4-42bk7"]="9090"
    ["thanos-query-frontend-857bb4d5fb-5694f"]="9090"
    ["thanos-query-query-74dfd4d4cc-8xd9h"]="9090"
    ["thanos-query-query-frontend-dfb9ff5b9-sj9wx"]="9090"
    ["thanos-receiver-query-56f75d9484-8nf8c"]="9090"
    ["thanos-receiver-query-frontend-58f9c59876-jkrlj"]="9090"
    ["thanos-remote-write-query-7797989d75-djff8"]="9090"
    ["thanos-remote-write-query-frontend-c4fcf8fcc-5wk86"]="9090"
    ["thanos-storage-gateway-query-86bb874c79-h82vd"]="9090"
    ["thanos-storage-gateway-query-frontend-565bd45799-l7x57"]="9090"
)

# Function to forward ports for a pod
forward_pod_port() {
    local pod=$1
    local port=$2

    echo "Forwarding port for pod $pod on port $port..."

    # Forward port in the background
    local local_port=$((port + RANDOM % 1000))
    kubectl port-forward pod/$pod $local_port:$port -n $NAMESPACE &
}

# Forward ports for all pods
forward_all_pods() {
    for pod in "${!POD_PORTS[@]}"; do
        forward_pod_port $pod ${POD_PORTS[$pod]}
    done
}

# Forward ports for all pods
forward_all_pods

# Wait indefinitely to keep the script running
wait
