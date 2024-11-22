# Debugging Prometheus and Thanos

To diagnose Prometheus and Thanos, you can use the following `kubectl` command to get the status of all pods in the `monitoring` namespace:

```sh
kubectl get pods -n monitoring
```

This command will list all the pods in the `monitoring` namespace along with their statuses, which can help you identify any issues with the Prometheus and Thanos deployments.

Example output:

```sh
NAME                                      READY   STATUS    RESTARTS   AGE
prometheus-server-5b6c7d8f9d-abcde        2/2     Running   0          10m
thanos-query-7f8d9c6b5d-xyz12             1/1     Running   0          10m
thanos-storegateway-6d7f8g9h0i-jkl34      1/1     Running   0          10m
thanos-receive-9h0i1j2k3l-mno56           1/1     Running   0          10m
alertmanager-7g8h9i0j1k-lmn78             2/2     Running   0          10m
```

If any of the pods are not in the `Running` status, you can further investigate by describing the pod or checking the logs:

```sh
kubectl describe pod <pod-name> -n monitoring
kubectl logs <pod-name> -n monitoring
```

Replace `<pod-name>` with the name of the pod you want to investigate.
