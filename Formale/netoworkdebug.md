@YakubPlayground ➜ /workspaces/Thanos-remotewrite/Symbols (master) $ ./network.sh 
Error from server (NotFound): services "thanos-remote-write" not found
Connection to thanos-remote-write on port 10904: FAIL
Error from server (NotFound): services "thanos-receiver" not found
Connection to thanos-receiver on port 10902: FAIL
error: Service thanos-query does not have a service port 10901
Connection to thanos-query on port 10901: FAIL
Error from server (NotFound): services "thanos-storage-gateway" not found
Connection to thanos-storage-gateway on port 10903: FAIL
Error from server (NotFound): services "alertmanager" not found
Connection to alertmanager on port 9093: FAIL


The errors above indicate that the services `thanos-remote-write`, `thanos-receiver`, `thanos-storage-gateway`, and `alertmanager` are not found in the Kubernetes cluster. Additionally, the `thanos-query` service does not have a port 10901 defined.

From the output of `kubectl get services -n monitoring`, it appears that the services are named differently. For example, `thanos-remote-write-query-grpc` instead of `thanos-remote-write`. Ensure that the service names and ports match what your scripts expect.

To resolve these issues, ensure that:
1. The services are correctly defined and deployed in your Kubernetes cluster.
2. The service definitions include the necessary ports.

You can check the services with the following command:
```sh
kubectl get services -n monitoring
```

If the services are missing, you may need to create them. Here is an example of how to define a service in a YAML file:

```yaml
apiVersion: v1
kind: Service
metadata:
    name: thanos-remote-write
spec:
    ports:
        - port: 10904
            targetPort: 10904
    selector:
        app: thanos-remote-write
```

Apply the service definition with:
```sh
kubectl apply -f service-definition.yaml -n monitoring
```

Repeat this process for the other missing services and ensure the `thanos-query` service has the correct port configuration.


