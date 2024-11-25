@YakubPlayground ➜ /workspaces/Thanos-remotewrite/Symbols (master) $ ./network.sh 
Forwarding port for pod thanos-frontend-query-frontend-859f4f97bf-pzw8n on port 9090...
Forwarding port for pod thanos-storage-gateway-query-86bb874c79-h82vd on port 9090...
Forwarding port for pod thanos-remote-write-query-frontend-c4fcf8fcc-5wk86 on port 9090...
Forwarding port for pod thanos-receiver-query-56f75d9484-8nf8c on port 9090...
Forwarding port for pod thanos-query-query-74dfd4d4cc-8xd9h on port 9090...
Forwarding port for pod thanos-receiver-query-frontend-58f9c59876-jkrlj on port 9090...
Forwarding port for pod prometheus-alertmanager-0 on port 9093...
Forwarding port for pod thanos-remote-write-query-7797989d75-djff8 on port 9090...
Forwarding port for pod thanos-query-7b9c7974c4-42bk7 on port 9090...
Forwarding port for pod thanos-storage-gateway-query-frontend-565bd45799-l7x57 on port 9090...
Forwarding port for pod thanos-frontend-query-867cb577dc-5c8vn on port 9090...
Forwarding port for pod thanos-query-frontend-857bb4d5fb-5694f on port 9090...
Forwarding port for pod prometheus-server-8475dcbb69-jn2hb on port 9090...
Forwarding port for pod thanos-query-query-frontend-dfb9ff5b9-sj9wx on port 9090...
Forwarding from 127.0.0.1:9314 -> 9090
Forwarding from [::1]:9314 -> 9090
Forwarding from 127.0.0.1:9664 -> 9093
Forwarding from [::1]:9664 -> 9093
Forwarding from 127.0.0.1:9825 -> 9090
Forwarding from [::1]:9825 -> 9090
Forwarding from 127.0.0.1:10014 -> 9090
Forwarding from [::1]:10014 -> 9090
Forwarding from 127.0.0.1:9928 -> 9090
Forwarding from [::1]:9928 -> 9090
Forwarding from 127.0.0.1:9408 -> 9090
Forwarding from [::1]:9408 -> 9090
Forwarding from 127.0.0.1:9139 -> 9090
Forwarding from [::1]:9139 -> 9090
Forwarding from 127.0.0.1:9173 -> 9090
Forwarding from [::1]:9173 -> 9090
Forwarding from 127.0.0.1:9593 -> 9090
Forwarding from [::1]:9593 -> 9090
Forwarding from 127.0.0.1:9124 -> 9090
Forwarding from [::1]:9124 -> 9090
Forwarding from 127.0.0.1:9661 -> 9090
Forwarding from [::1]:9661 -> 9090
Forwarding from 127.0.0.1:9502 -> 9090
Forwarding from [::1]:9502 -> 9090
Forwarding from 127.0.0.1:9397 -> 9090
Forwarding from [::1]:9397 -> 9090
Forwarding from 127.0.0.1:9908 -> 9090
Forwarding from [::1]:9908 -> 9090
Handling connection for 9124
Handling connection for 10014
Handling connection for 9928
E1124 23:49:48.350388   48494 portforward.go:413] "Unhandled Error" err=<
        an error occurred forwarding 9928 -> 9090: error forwarding port 9090 to pod fe11a94397d1b69a123e2764ca3b40e441a6f2d43c4189d61cf90bb7783b77e1, uid : exit status 1: 2024/11/24 23:49:48 socat[18452] E connect(5, AF=2 127.0.0.1:9090, 16): Connection refused
 >
error: lost connection to pod
Handling connection for 9124
Handling connection for 9139
E1124 23:49:57.889990   48492 portforward.go:413] "Unhandled Error" err=<
        an error occurred forwarding 9139 -> 9090: error forwarding port 9090 to pod bbb7ac23da4cc5fafcfeb6db77d4c737b4659756be5f84b143c583482cad17f5, uid : exit status 1: 2024/11/24 23:49:57 socat[18487] E connect(5, AF=2 127.0.0.1:9090, 16): Connection refused
 >
error: lost connection to pod
Handling connection for 9173
Handling connection for 9314
Handling connection for 9397
Handling connection for 9408
E1124 23:50:23.533081   48501 portforward.go:413] "Unhandled Error" err=<
        an error occurred forwarding 9408 -> 9090: error forwarding port 9090 to pod 37a120972da07303fc54e391ab9ffe2ac35e46c3592af14719d86f957c02b468, uid : exit status 1: 2024/11/24 23:50:23 socat[18572] E connect(5, AF=2 127.0.0.1:9090, 16): Connection refused
 >
error: lost connection to pod
Handling connection for 9593
E1124 23:50:28.265620   48498 portforward.go:413] "Unhandled Error" err=<
        an error occurred forwarding 9593 -> 9090: error forwarding port 9090 to pod c66f71f2c9aa2d8c5de8e1e2180fbf3dc1c36b540df3d5bf1c5f669d35096dc5, uid : exit status 1: 2024/11/24 23:50:28 socat[18589] E connect(5, AF=2 127.0.0.1:9090, 16): Connection refused
 >
error: lost connection to pod
Handling connection for 9661
E1124 23:50:32.429634   48507 portforward.go:413] "Unhandled Error" err=<
        an error occurred forwarding 9661 -> 9090: error forwarding port 9090 to pod d58dbf2a9319771d4e2f43696ede265032c8de5266d277342058bb4560281769, uid : exit status 1: 2024/11/24 23:50:32 socat[18605] E connect(5, AF=2 127.0.0.1:9090, 16): Connection refused
 >
error: lost connection to pod
Handling connection for 9664
Handling connection for 9664
Handling connection for 9664
Handling connection for 9664
Handling connection for 9664
Handling connection for 9664
Handling connection for 9825
E1124 23:50:46.954807   48495 portforward.go:413] "Unhandled Error" err=<
        an error occurred forwarding 9825 -> 9090: error forwarding port 9090 to pod cac703267390bc35e3356458fe0c959183e09f68250396feb82c68e47d110381, uid : exit status 1: 2024/11/24 23:50:46 socat[18661] E connect(5, AF=2 127.0.0.1:9090, 16): Connection refused
 >
error: lost connection to pod
Handling connection for 10014
Handling connection for 10014
Handling connection for 9908
Handling connection for 9908
Handling connection for 9908
Handling connection for 9908
Handling connection for 9908
Handling connection for 9908



@YakubPlayground ➜ /workspaces/Thanos-remotewrite/Symbols (master) $ kubectl get pods -n <namespace> | grep -E 'thanos|prometheus'