#!/bin/bash

count_listening_ports() {
    local pod_name=$1
    local namespace=$2
    local logs=$(kubectl logs "$pod_name" -n "$namespace" | grep -i "listening")
    local count=$(echo "$logs" | wc -l)
    echo "Logs for $pod_name"
    echo "Number of listening ports: $count"
    echo "$logs"
    echo ""
}

namespace="monitoring"

count_listening_ports "prometheus-alertmanager-0" "$namespace"
count_listening_ports "prometheus-server-8475dcbb69-jn2hb" "$namespace"
count_listening_ports "thanos-frontend-query-867cb577dc-5c8vn" "$namespace"
count_listening_ports "thanos-frontend-query-frontend-859f4f97bf-pzw8n" "$namespace"
count_listening_ports "thanos-query-7b9c7974c4-42bk7" "$namespace"
count_listening_ports "thanos-query-frontend-857bb4d5fb-5694f" "$namespace"
count_listening_ports "thanos-query-query-74dfd4d4cc-8xd9h" "$namespace"
count_listening_ports "thanos-query-query-frontend-dfb9ff5b9-sj9wx" "$namespace"
count_listening_ports "thanos-receiver-query-56f75d9484-8nf8c" "$namespace"
count_listening_ports "thanos-receiver-query-frontend-58f9c59876-jkrlj" "$namespace"
count_listening_ports "thanos-remote-write-query-7797989d75-djff8" "$namespace"
count_listening_ports "thanos-remote-write-query-frontend-c4fcf8fcc-5wk86" "$namespace"
count_listening_ports "thanos-storage-gateway-query-86bb874c79-h82vd" "$namespace"
count_listening_ports "thanos-storage-gateway-query-frontend-565bd45799-l7x57" "$namespace"
