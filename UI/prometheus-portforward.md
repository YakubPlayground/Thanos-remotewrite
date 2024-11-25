#DS I got the prometheus forwarded. 

@YakubPlayground ➜ /workspaces/Thanos-remotewrite/Environment (master) $  kubectl port-forward prometheus-server-8475dcbb69-jn2hb 9090:9090 -n monitoring
Forwarding from 127.0.0.1:9090 -> 9090
Forwarding from [::1]:9090 -> 9090
Handling connection for 9090
