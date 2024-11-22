@YakubPlayground ➜ /workspaces/Thanos-remotewrite/Symbols (master) $ helm search repo bitnami/alertmanager
No results found
@YakubPlayground ➜ /workspaces/Thanos-remotewrite/Symbols (master) $ helm search repo prometheus-community/alertmanager
No results found

To resolve this issue, you can add the Helm repository for Prometheus and then search for Alertmanager again:

```sh
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm search repo prometheus-community/alertmanager
```
This should return the available Alertmanager charts from the Prometheus community repository.
Simply add the Prometheus community Helm repository and update it to find the Alertmanager charts.
```sh


```