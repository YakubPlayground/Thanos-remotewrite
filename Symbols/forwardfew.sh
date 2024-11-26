#!/bin/bash

# clearup
# Kill all background port-forward processes
pkill -f "kubectl port-forward"

# Forward ports for three services from the list using pod names
read -p "Press enter to forward prometheus-alertmanager-0..."
kubectl port-forward prometheus-alertmanager-0 -n monitoring 8080:9093 &

read -p "Press enter to forward prometheus-server-8475dcbb69-jn2hb..."
kubectl port-forward prometheus-server-8475dcbb69-jn2hb -n monitoring 8081:9090 &

read -p "Press enter to forward thanos-frontend-query-867cb577dc-5c8vn..."
kubectl port-forward thanos-frontend-query-867cb577dc-5c8vn -n monitoring 8082:10902 &
