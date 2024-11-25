### Thanos Query
- `/thanos-query`: Access the Thanos Query UI.

### Thanos Store
- `/thanos-store`: Access the Thanos Store UI.

### Thanos Ruler
- `/thanos-ruler`: Access the Thanos Ruler UI.


### Troubleshooting Steps

If you are unable to access the Thanos UIs, follow these steps to troubleshoot:

1. **Check Pod Status**:
    Ensure all Thanos pods are running:
    ```shell
    kubectl get pods -n monitoring
    ```

2. **Check Service Status**:
    Verify that the services are correctly created and running:
    ```shell
    kubectl get svc -n monitoring
    ```

3. **Port Forwarding**:
    Use port forwarding to access the UIs locally:
    ```shell
    kubectl port-forward svc/thanos-query 9090:9090 -n monitoring
    kubectl port-forward svc/thanos-store 10901:10901 -n monitoring
    kubectl port-forward svc/thanos-ruler 10902:10902 -n monitoring
    ```

4. **Check Logs**:
    Inspect the logs of the pods for any errors:
    ```shell
    kubectl logs <pod-name> -n monitoring
    ```

5. **Network Policies**:
    Ensure there are no network policies blocking access to the services.

6. **Ingress Configuration**:
    If using an ingress, verify the ingress rules and ensure they are correctly configured.

By following these steps, you should be able to identify and resolve the issue preventing access to the Thanos UIs.