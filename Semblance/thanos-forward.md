@YakubPlayground ➜ /workspaces/Thanos-remotewrite (master) $  kubectl port-forward thanos-frontend-query-867cb577dc-5c8vn 8082:10902 -n monitoring
Forwarding from 127.0.0.1:8082 -> 10902
Forwarding from [::1]:8082 -> 10902
Handling connection for 8082
E1125 15:09:41.989139   22145 portforward.go:413] "Unhandled Error" err=<
        an error occurred forwarding 8082 -> 10902: error forwarding port 10902 to pod ac1fdbe1992bcfe4f0ec62ced5b7a1b77d8f330d20dbee48316d5a801182f812, uid : exit status 1: 2024/11/25 15:09:41 socat[6508] E connect(5, AF=2 127.0.0.1:10902, 16): Connection refused
 >
error: lost connection to pod

To resolve this issue, ensure that the pod `thanos-frontend-query-867cb577dc-5c8vn` is running and accessible. You can check the pod status using the following command:

```sh
kubectl get pods -n monitoring
```

If the pod is not running, you may need to investigate the pod logs to identify the issue:

```sh
kubectl logs thanos-frontend-query-867cb577dc-5c8vn -n monitoring
```

Additionally, verify that the service is correctly exposing port 10902 and that there are no network policies blocking the connection.


I got  pod logs showing :

```sh
kubectl logs thanos-frontend-query-867cb577dc-5c8vn -n monitoring
```

The pod logs indicate that the query node is starting and listening on port 10902 for HTTP requests and metrics, and on port 10901 for gRPC. However, the error message suggests that the connection to port 10902 is being refused.

To resolve this issue, ensure the following:

1. The pod `thanos-frontend-query-867cb577dc-5c8vn` is running and in a healthy state.
2. The service is correctly exposing port 10902.
3. There are no network policies or firewall rules blocking the connection.

You can verify the service configuration with:

```sh
kubectl get svc -n monitoring
```

And check for any network policies with:

```sh
kubectl get networkpolicies -n monitoring
```
```sh
kubectl port-forward thanos-frontend-query-867cb577dc-5c8vn 10902:10902 -n monitoring
```

