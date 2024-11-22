@YakubPlayground ➜ /workspaces/Thanos-remotewrite/Symbols (master) $ kubectl get pods -n monitoring 
NAME                                                     READY   STATUS    RESTARTS   AGE
prometheus-alertmanager-0                                1/1     Running   0          4m2s
prometheus-server-8475dcbb69-jn2hb                       1/1     Running   0          4m2s
thanos-frontend-query-867cb577dc-5c8vn                   1/1     Running   0          2m22s
thanos-frontend-query-frontend-859f4f97bf-pzw8n          1/1     Running   0          2m22s
thanos-query-7b9c7974c4-42bk7                            1/1     Running   0          2m25s
thanos-query-frontend-857bb4d5fb-5694f                   1/1     Running   0          2m25s
thanos-query-query-74dfd4d4cc-8xd9h                      1/1     Running   0          2m19s
thanos-query-query-frontend-dfb9ff5b9-sj9wx              1/1     Running   0          2m19s
thanos-receiver-query-56f75d9484-8nf8c                   1/1     Running   0          2m16s
thanos-receiver-query-frontend-58f9c59876-jkrlj          1/1     Running   0          2m16s
thanos-remote-write-query-7797989d75-djff8               1/1     Running   0          2m8s
thanos-remote-write-query-frontend-c4fcf8fcc-5wk86       1/1     Running   0          2m8s
thanos-storage-gateway-query-86bb874c79-h82vd            1/1     Running   0          2m13s
thanos-storage-gateway-query-frontend-565bd45799-l7x57   1/1     Running   0          2m13s