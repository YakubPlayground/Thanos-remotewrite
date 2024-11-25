@YakubPlayground ➜ /workspaces/Thanos-remotewrite/Symbols (master) $ kubectl get services -n monitoring
NAME                                    TYPE           CLUSTER-IP       EXTERNAL-IP   PORT(S)              AGE
alertmanager                            ClusterIP      10.109.100.27    <none>        9093/TCP             15m
prometheus-alertmanager                 LoadBalancer   10.102.79.137    <pending>     80:31950/TCP         2d7h
prometheus-server                       LoadBalancer   10.100.45.68     <pending>     80:31115/TCP         2d7h
thanos-frontend-query                   ClusterIP      10.98.153.110    <none>        9090/TCP             2d7h
thanos-frontend-query-frontend          ClusterIP      10.100.137.21    <none>        9090/TCP             2d7h
thanos-frontend-query-grpc              ClusterIP      10.110.54.161    <none>        10901/TCP            2d7h
thanos-query                            ClusterIP      10.103.128.170   <none>        10901/TCP,9090/TCP   2d7h
thanos-query-frontend                   ClusterIP      10.103.44.113    <none>        9090/TCP             2d7h
thanos-query-grpc                       ClusterIP      10.109.46.60     <none>        10901/TCP            2d7h
thanos-query-query                      ClusterIP      10.102.218.88    <none>        9090/TCP             2d7h
thanos-query-query-frontend             ClusterIP      10.105.124.60    <none>        9090/TCP             2d7h
thanos-query-query-grpc                 ClusterIP      10.105.158.121   <none>        10901/TCP            2d7h
thanos-receiver                         ClusterIP      10.98.231.104    <none>        10902/TCP            16m
thanos-receiver-query                   ClusterIP      10.98.168.157    <none>        9090/TCP             2d7h
thanos-receiver-query-frontend          ClusterIP      10.96.188.151    <none>        9090/TCP             2d7h
thanos-receiver-query-grpc              ClusterIP      10.110.165.119   <none>        10901/TCP            2d7h
thanos-remote-write                     ClusterIP      10.104.50.166    <none>        10904/TCP            16m
thanos-remote-write-query               ClusterIP      10.105.216.30    <none>        9090/TCP             2d7h
thanos-remote-write-query-frontend      ClusterIP      10.103.20.151    <none>        9090/TCP             2d7h
thanos-remote-write-query-grpc          ClusterIP      10.96.162.86     <none>        10901/TCP            2d7h
thanos-storage-gateway                  ClusterIP      10.102.6.83      <none>        10903/TCP            16m
thanos-storage-gateway-query            ClusterIP      10.108.168.111   <none>        9090/TCP             2d7h
thanos-storage-gateway-query-frontend   ClusterIP      10.97.94.46      <none>        9090/TCP             2d7h
thanos-storage-gateway-query-grpc       ClusterIP      10.102.164.223   <none>        10901/TCP            2d7h


To change each service to have unique ports, you can edit the service definitions in your Kubernetes configuration files. Here is an example of how you can modify the ports for each service:

```yaml
apiVersion: v1
kind: Service
metadata:
    name: alertmanager
    namespace: monitoring
spec:
    ports:
        - port: 9093
            targetPort: 9093
            protocol: TCP
    selector:
        app: alertmanager
---
apiVersion: v1
kind: Service
metadata:
    name: prometheus-alertmanager
    namespace: monitoring
spec:
    ports:
        - port: 8080
            targetPort: 9093
            protocol: TCP
    selector:
        app: prometheus-alertmanager
---
apiVersion: v1
kind: Service
metadata:
    name: prometheus-server
    namespace: monitoring
spec:
    ports:
        - port: 8081
            targetPort: 9090
            protocol: TCP
    selector:
        app: prometheus-server
---
apiVersion: v1
kind: Service
metadata:
    name: thanos-frontend-query
    namespace: monitoring
spec:
    ports:
        - port: 8082
            targetPort: 9090
            protocol: TCP
    selector:
        app: thanos-frontend-query
---
apiVersion: v1
kind: Service
metadata:
    name: thanos-frontend-query-frontend
    namespace: monitoring
spec:
    ports:
        - port: 8083
            targetPort: 9090
            protocol: TCP
    selector:
        app: thanos-frontend-query-frontend
---
apiVersion: v1
kind: Service
metadata:
    name: thanos-frontend-query-grpc
    namespace: monitoring
spec:
    ports:
        - port: 8084
            targetPort: 10901
            protocol: TCP
    selector:
        app: thanos-frontend-query-grpc
---
apiVersion: v1
kind: Service
metadata:
    name: thanos-query
    namespace: monitoring
spec:
    ports:
        - port: 8085
            targetPort: 10901
            protocol: TCP
        - port: 8086
            targetPort: 9090
            protocol: TCP
    selector:
        app: thanos-query
---
apiVersion: v1
kind: Service
metadata:
    name: thanos-query-frontend
    namespace: monitoring
spec:
    ports:
        - port: 8087
            targetPort: 9090
            protocol: TCP
    selector:
        app: thanos-query-frontend
---
apiVersion: v1
kind: Service
metadata:
    name: thanos-query-grpc
    namespace: monitoring
spec:
    ports:
        - port: 8088
            targetPort: 10901
            protocol: TCP
    selector:
        app: thanos-query-grpc
---
apiVersion: v1
kind: Service
metadata:
    name: thanos-query-query
    namespace: monitoring
spec:
    ports:
        - port: 8089
            targetPort: 9090
            protocol: TCP
    selector:
        app: thanos-query-query
---
apiVersion: v1
kind: Service
metadata:
    name: thanos-query-query-frontend
    namespace: monitoring
spec:
    ports:
        - port: 8090
            targetPort: 9090
            protocol: TCP
    selector:
        app: thanos-query-query-frontend
---
apiVersion: v1
kind: Service
metadata:
    name: thanos-query-query-grpc
    namespace: monitoring
spec:
    ports:
        - port: 8091
            targetPort: 10901
            protocol: TCP
    selector:
        app: thanos-query-query-grpc
---
apiVersion: v1
kind: Service
metadata:
    name: thanos-receiver
    namespace: monitoring
spec:
    ports:
        - port: 8092
            targetPort: 10902
            protocol: TCP
    selector:
        app: thanos-receiver
---
apiVersion: v1
kind: Service
metadata:
    name: thanos-receiver-query
    namespace: monitoring
spec:
    ports:
        - port: 8093
            targetPort: 9090
            protocol: TCP
    selector:
        app: thanos-receiver-query
---
apiVersion: v1
kind: Service
metadata:
    name: thanos-receiver-query-frontend
    namespace: monitoring
spec:
    ports:
        - port: 8094
            targetPort: 9090
            protocol: TCP
    selector:
        app: thanos-receiver-query-frontend
---
apiVersion: v1
kind: Service
metadata:
    name: thanos-receiver-query-grpc
    namespace: monitoring
spec:
    ports:
        - port: 8095
            targetPort: 10901
            protocol: TCP
    selector:
        app: thanos-receiver-query-grpc
---
apiVersion: v1
kind: Service
metadata:
    name: thanos-remote-write
    namespace: monitoring
spec:
    ports:
        - port: 8096
            targetPort: 10904
            protocol: TCP
    selector:
        app: thanos-remote-write
---
apiVersion: v1
kind: Service
metadata:
    name: thanos-remote-write-query
    namespace: monitoring
spec:
    ports:
        - port: 8097
            targetPort: 9090
            protocol: TCP
    selector:
        app: thanos-remote-write-query
---
apiVersion: v1
kind: Service
metadata:
    name: thanos-remote-write-query-frontend
    namespace: monitoring
spec:
    ports:
        - port: 8098
            targetPort: 9090
            protocol: TCP
    selector:
        app: thanos-remote-write-query-frontend
---
apiVersion: v1
kind: Service
metadata:
    name: thanos-remote-write-query-grpc
    namespace: monitoring
spec:
    ports:
        - port: 8099
            targetPort: 10901
            protocol: TCP
    selector:
        app: thanos-remote-write-query-grpc
---
apiVersion: v1
kind: Service
metadata:
    name: thanos-storage-gateway
    namespace: monitoring
spec:
    ports:
        - port: 8100
            targetPort: 10903
            protocol: TCP
    selector:
        app: thanos-storage-gateway
---
apiVersion: v1
kind: Service
metadata:
    name: thanos-storage-gateway-query
    namespace: monitoring
spec:
    ports:
        - port: 8101
            targetPort: 9090
            protocol: TCP
    selector:
        app: thanos-storage-gateway-query
---
apiVersion: v1
kind: Service
metadata:
    name: thanos-storage-gateway-query-frontend
    namespace: monitoring
spec:
    ports:
        - port: 8102
            targetPort: 9090
            protocol: TCP
    selector:
        app: thanos-storage-gateway-query-frontend
---
apiVersion: v1
kind: Service
metadata:
    name: thanos-storage-gateway-query-grpc
    namespace: monitoring
spec:
    ports:
        - port: 8103
            targetPort: 10901
            protocol: TCP
    selector:
        app: thanos-storage-gateway-query-grpc
```

Make sure to apply these changes using `kubectl apply -f <your-config-file>.yaml`.