@YakubPlayground ➜ /workspaces/Thanos-remotewrite/Symbols (master) $ ./logs.sh 
| Service Name                           | Number of Listening Ports | Address 1  | Address 2  | Address 3  |
|----------------------------------------|---------------------------|------------|------------|------------|
| prometheus-alertmanager-0              | 1                         | 9093       |            |            |
| prometheus-server-8475dcbb69-jn2hb     | 2                         | 9090       | 9090       |            |
| thanos-frontend-query-867cb577dc-5c8vn | 3                         | 10902      | 10902      | 10901      |
8082nos-frontend-query-frontend-859f4f97bf-pzw8n | 2                | 9090       | 9090       |            |
| thanos-query-7b9c7974c4-42bk7          | 3                         | 10902      | 10902      | 10901      |
| thanos-query-frontend-857bb4d5fb-5694f | 2                         | 9090       | 9090       |            |
| thanos-query-query-74dfd4d4cc-8xd9h    | 3                         | 10902      | 10902      | 10901      |
| thanos-query-query-frontend-dfb9ff5b9-sj9wx | 2                     | 9090       | 9090       |            |
| thanos-receiver-query-56f75d9484-8nf8c | 3                         | 10902      | 10902      | 10901      |
| thanos-receiver-query-frontend-58f9c59876-jkrlj | 2                 | 9090       | 9090       |            |
| thanos-remote-write-query-7797989d75-djff8 | 3                     | 10902      | 10902      | 10901      |
| thanos-remote-write-query-frontend-c4fcf8fcc-5wk86 | 2              | 9090       | 9090       |            |
| thanos-storage-gateway-query-86bb874c79-h82vd | 3                  | 10902      | 10902      | 10901      |
| thanos-storage-gateway-query-frontend-565bd45799-l7x57 | 2          | 9090       | 9090       |            |


old: 

@YakubPlayground ➜ /workspaces/Thanos-remotewrite/Symbols (master) $ ./logs.sh 
Logs for prometheus-alertmanager-0
Number of listening ports: 1
ts=2024-11-25T22:11:41.014Z caller=tls_config.go:313 level=info msg="Listening on" address=[::]:9093

Logs for prometheus-server-8475dcbb69-jn2hb
Number of listening ports: 2
ts=2024-11-25T22:11:41.318Z caller=web.go:585 level=info component=web msg="Start listening for connections" address=:9090
ts=2024-11-25T22:11:41.382Z caller=tls_config.go:348 level=info component=web msg="Listening on" address=[::]:9090

Logs for thanos-frontend-query-867cb577dc-5c8vn
Number of listening ports: 3
ts=2024-11-25T22:11:40.598790973Z caller=http.go:73 level=info service=http/server component=query msg="listening for requests and metrics" address=0.0.0.0:10902
ts=2024-11-25T22:11:40.599054485Z caller=tls_config.go:313 level=info service=http/server component=query msg="Listening on" address=[::]:10902
ts=2024-11-25T22:11:40.599161404Z caller=grpc.go:167 level=info service=gRPC/server component=query msg="listening for serving gRPC" address=0.0.0.0:10901

Logs for thanos-frontend-query-frontend-859f4f97bf-pzw8n
Number of listening ports: 2
ts=2024-11-25T22:11:40.596842246Z caller=http.go:73 level=info service=http/server component=query-frontend msg="listening for requests and metrics" address=0.0.0.0:9090
ts=2024-11-25T22:11:40.608053027Z caller=tls_config.go:313 level=info service=http/server component=query-frontend msg="Listening on" address=[::]:9090

Logs for thanos-query-7b9c7974c4-42bk7
Number of listening ports: 3
ts=2024-11-25T22:11:41.189300996Z caller=http.go:73 level=info service=http/server component=query msg="listening for requests and metrics" address=0.0.0.0:10902
ts=2024-11-25T22:11:41.189506269Z caller=tls_config.go:313 level=info service=http/server component=query msg="Listening on" address=[::]:10902
ts=2024-11-25T22:11:41.189606796Z caller=grpc.go:167 level=info service=gRPC/server component=query msg="listening for serving gRPC" address=0.0.0.0:10901

Logs for thanos-query-frontend-857bb4d5fb-5694f
Number of listening ports: 2
ts=2024-11-25T22:11:40.632158355Z caller=http.go:73 level=info service=http/server component=query-frontend msg="listening for requests and metrics" address=0.0.0.0:9090
ts=2024-11-25T22:11:40.632374639Z caller=tls_config.go:313 level=info service=http/server component=query-frontend msg="Listening on" address=[::]:9090

Logs for thanos-query-query-74dfd4d4cc-8xd9h
Number of listening ports: 3
ts=2024-11-25T22:11:41.264680543Z caller=http.go:73 level=info service=http/server component=query msg="listening for requests and metrics" address=0.0.0.0:10902
ts=2024-11-25T22:11:41.264887519Z caller=tls_config.go:313 level=info service=http/server component=query msg="Listening on" address=[::]:10902
ts=2024-11-25T22:11:41.26497933Z caller=grpc.go:167 level=info service=gRPC/server component=query msg="listening for serving gRPC" address=0.0.0.0:10901

Logs for thanos-query-query-frontend-dfb9ff5b9-sj9wx
Number of listening ports: 2
ts=2024-11-25T22:11:40.665990735Z caller=http.go:73 level=info service=http/server component=query-frontend msg="listening for requests and metrics" address=0.0.0.0:9090
ts=2024-11-25T22:11:40.666226375Z caller=tls_config.go:313 level=info service=http/server component=query-frontend msg="Listening on" address=[::]:9090

Logs for thanos-receiver-query-56f75d9484-8nf8c
Number of listening ports: 3
ts=2024-11-25T22:11:41.497780418Z caller=http.go:73 level=info service=http/server component=query msg="listening for requests and metrics" address=0.0.0.0:10902
ts=2024-11-25T22:11:41.498020747Z caller=tls_config.go:313 level=info service=http/server component=query msg="Listening on" address=[::]:10902
ts=2024-11-25T22:11:41.498799149Z caller=grpc.go:167 level=info service=gRPC/server component=query msg="listening for serving gRPC" address=0.0.0.0:10901

Logs for thanos-receiver-query-frontend-58f9c59876-jkrlj
Number of listening ports: 2
ts=2024-11-25T22:11:41.372673379Z caller=http.go:73 level=info service=http/server component=query-frontend msg="listening for requests and metrics" address=0.0.0.0:9090
ts=2024-11-25T22:11:41.372884003Z caller=tls_config.go:313 level=info service=http/server component=query-frontend msg="Listening on" address=[::]:9090

Logs for thanos-remote-write-query-7797989d75-djff8
Number of listening ports: 3
ts=2024-11-25T22:11:41.596130846Z caller=http.go:73 level=info service=http/server component=query msg="listening for requests and metrics" address=0.0.0.0:10902
ts=2024-11-25T22:11:41.596351298Z caller=tls_config.go:313 level=info service=http/server component=query msg="Listening on" address=[::]:10902
ts=2024-11-25T22:11:41.596482773Z caller=grpc.go:167 level=info service=gRPC/server component=query msg="listening for serving gRPC" address=0.0.0.0:10901

Logs for thanos-remote-write-query-frontend-c4fcf8fcc-5wk86
Number of listening ports: 2
ts=2024-11-25T22:11:40.625341257Z caller=http.go:73 level=info service=http/server component=query-frontend msg="listening for requests and metrics" address=0.0.0.0:9090
ts=2024-11-25T22:11:40.625572619Z caller=tls_config.go:313 level=info service=http/server component=query-frontend msg="Listening on" address=[::]:9090

Logs for thanos-storage-gateway-query-86bb874c79-h82vd
Number of listening ports: 3
ts=2024-11-25T22:11:41.395583512Z caller=http.go:73 level=info service=http/server component=query msg="listening for requests and metrics" address=0.0.0.0:10902
ts=2024-11-25T22:11:41.397240023Z caller=tls_config.go:313 level=info service=http/server component=query msg="Listening on" address=[::]:10902
ts=2024-11-25T22:11:41.397354016Z caller=grpc.go:167 level=info service=gRPC/server component=query msg="listening for serving gRPC" address=0.0.0.0:10901

Logs for thanos-storage-gateway-query-frontend-565bd45799-l7x57
Number of listening ports: 2
ts=2024-11-25T22:11:41.174694058Z caller=http.go:73 level=info service=http/server component=query-frontend msg="listening for requests and metrics" address=0.0.0.0:9090
ts=2024-11-25T22:11:41.174943964Z caller=tls_config.go:313 level=info service=http/server component=query-frontend msg="Listening on" address=[::]:9090