@YakubPlayground ➜ /workspaces/Thanos-remotewrite/Symbols (master) $ ./thanos.sh 
NAME: thanos
LAST DEPLOYED: Fri Nov 22 15:40:32 2024
NAMESPACE: monitoring
STATUS: deployed
REVISION: 1
TEST SUITE: None
NOTES:
CHART NAME: thanos
CHART VERSION: 15.8.1
APP VERSION: 0.36.1

** Please be patient while the chart is being deployed **

Thanos chart was deployed enabling the following components:
- Thanos Query

Thanos Query can be accessed through following DNS name from within your cluster:

    thanos-query.monitoring.svc.cluster.local (port 9090)

To access Thanos Query from outside the cluster execute the following commands:

1. Get the Thanos Query URL by running these commands:

    export SERVICE_PORT=$(kubectl get --namespace monitoring -o jsonpath="{.spec.ports[0].port}" services thanos-query)
    kubectl port-forward --namespace monitoring svc/thanos-query ${SERVICE_PORT}:${SERVICE_PORT} &
    echo "http://127.0.0.1:${SERVICE_PORT}"

2. Open a browser and access Thanos Query using the obtained URL.

WARNING: There are "resources" sections in the chart not set. Using "resourcesPreset" is not recommended for production. For production installations, please set the following values according to your workload needs:
  - query.resources
  - queryFrontend.resources
+info https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
To solve the error `Error: INSTALLATION FAILED: chart "alertmanager" matching not found in bitnami index. (try 'helm repo update'): no chart name found`, you can follow these steps:

1. **Update Helm Repositories**:
    Run the following command to update your Helm repositories:
    ```sh
    helm repo update
    ```

2. **Check Chart Name and Repository**:
    Ensure that the chart name and repository are correct. You can search for the chart in the Prometheus Community repository:
    ```sh
    helm search repo prometheus-community/alertmanager
    ```

3. **Add Prometheus Community Repository**:
    If the Prometheus Community repository is not added, you can add it using:
    ```sh
    helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
    ```

4. **Install the Chart**:
    After updating the repositories and ensuring the chart is available, try installing the chart again:
    ```sh
    helm install alertmanager prometheus-community/alertmanager --namespace monitoring
    ```

For more information, visit [Prometheus Community Alertmanager](https://artifacthub.io/packages/helm/prometheus-community/alertmanager).

By following these steps, you should be able to resolve the installation error and successfully deploy the `alertmanager` chart.





