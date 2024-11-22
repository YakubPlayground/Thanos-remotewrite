@YakubPlayground ➜ /workspaces/Thanos-remotewrite/Symbols (master) $ kubectl get pods --namespace monitoring
NAME                                                     READY   STATUS    RESTARTS   AGE
alertmanager-0                                           1/1     Running   0          96s
prometheus-alertmanager-0                                1/1     Running   0          28m
prometheus-server-8475dcbb69-x8zmq                       1/1     Running   0          28m
thanos-frontend-query-867cb577dc-hcgpw                   1/1     Running   0          18m
thanos-frontend-query-frontend-859f4f97bf-9wl9x          1/1     Running   0          18m
thanos-query-7b9c7974c4-f5r5l                            1/1     Running   0          19m
thanos-query-frontend-857bb4d5fb-djbls                   1/1     Running   0          19m
thanos-query-query-74dfd4d4cc-tt8qs                      1/1     Running   0          18m
thanos-query-query-frontend-dfb9ff5b9-l7qff              1/1     Running   0          18m
thanos-receiver-query-56f75d9484-svc7q                   1/1     Running   0          18m
thanos-receiver-query-frontend-58f9c59876-mgqgj          1/1     Running   0          18m
thanos-remote-write-query-7797989d75-r4698               0/1     Pending   0          18m
thanos-remote-write-query-frontend-c4fcf8fcc-85b9f       0/1     Pending   0          18m
thanos-storage-gateway-query-86bb874c79-mv6l8            1/1     Running   0          18m
thanos-storage-gateway-query-frontend-565bd45799-6x24g   1/1     Running   0          18m
The following pods are in a pending state:





- `thanos-remote-write-query-7797989d75-r4698`
- `thanos-remote-write-query-frontend-c4fcf8fcc-85b9f`
