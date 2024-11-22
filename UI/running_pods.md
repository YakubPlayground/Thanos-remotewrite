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

@YakubPlayground ➜ /workspaces/Thanos-remotewrite/Symbols (master) $ kubectl describe pod thanos-remote-write-query-7797989d75-r4698 -n monitoring
Name:             thanos-remote-write-query-7797989d75-r4698
Namespace:        monitoring
Priority:         0
Service Account:  thanos-remote-write-query
Node:             <none>
Labels:           app.kubernetes.io/component=query
                  app.kubernetes.io/instance=thanos-remote-write
                  app.kubernetes.io/managed-by=Helm
                  app.kubernetes.io/name=thanos
                  app.kubernetes.io/version=0.36.1
                  helm.sh/chart=thanos-15.8.1
                  pod-template-hash=7797989d75
Annotations:      <none>
Status:           Pending
IP:               
IPs:              <none>
Controlled By:    ReplicaSet/thanos-remote-write-query-7797989d75
Containers:
  query:
    Image:           docker.io/bitnami/thanos:0.36.1-debian-12-r5
    Ports:           10902/TCP, 10901/TCP
    Host Ports:      0/TCP, 0/TCP
    SeccompProfile:  RuntimeDefault
    Args:
      query
      --log.level=info
      --log.format=logfmt
      --grpc-address=0.0.0.0:10901
      --http-address=0.0.0.0:10902
      --query.replica-label=replica
      --alert.query-url=http://thanos-remote-write-query.monitoring.svc.cluster.local:9090
    Limits:
      cpu:                150m
      ephemeral-storage:  2Gi
      memory:             192Mi
    Requests:
      cpu:                100m
      ephemeral-storage:  50Mi
      memory:             128Mi
    Liveness:             http-get http://:http/-/healthy delay=30s timeout=30s period=10s #success=1 #failure=6
    Readiness:            http-get http://:http/-/ready delay=30s timeout=30s period=10s #success=1 #failure=6
    Environment:          <none>
    Mounts:
      /var/run/secrets/kubernetes.io/serviceaccount from kube-api-access-r8hhz (ro)
Conditions:
  Type           Status
  PodScheduled   False 
Volumes:
  kube-api-access-r8hhz:
    Type:                    Projected (a volume that contains injected data from multiple sources)
    TokenExpirationSeconds:  3607
    ConfigMapName:           kube-root-ca.crt
    ConfigMapOptional:       <nil>
    DownwardAPI:             true
QoS Class:                   Burstable
Node-Selectors:              <none>
Tolerations:                 node.kubernetes.io/not-ready:NoExecute op=Exists for 300s
                             node.kubernetes.io/unreachable:NoExecute op=Exists for 300s
Events:
  Type     Reason            Age                  From               Message
  ----     ------            ----                 ----               -------
  Warning  FailedScheduling  3m50s (x5 over 23m)  default-scheduler  0/1 nodes are available: 1 Insufficient cpu. preemption: 0/1 nodes are available: 1 No preemption victims found for incoming pod.




