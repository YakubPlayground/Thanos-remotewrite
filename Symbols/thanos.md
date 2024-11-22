# Thanos Related Services

## 🛠️ Create Thanos Service using Helm Chart (Bitnami)
To install the Thanos service using the Bitnami Helm chart, use the following command:

```sh
helm install thanos bitnami/thanos --namespace monitoring
```

## 🌐 Create Thanos Frontend
To create the Thanos frontend, use the following command:

```sh
helm install thanos-frontend bitnami/thanos --namespace monitoring --set component=storegateway
```

## 🔄 Create Thanos Query
To create the Thanos query service, use the following command:

```sh
helm install thanos-query bitnami/thanos --namespace monitoring --set component=query
```

## 📥 Create Thanos Receiver
To create the Thanos receiver, use the following command:

```sh
helm install thanos-receiver bitnami/thanos --namespace monitoring --set component=receive
```

## 🗄️ Create Thanos Storage Gateway
To create the Thanos storage gateway, use the following command:

```sh
helm install thanos-storage-gateway bitnami/thanos --namespace monitoring --set component=storegateway
```

## 🚨 Create Alertmanager to be Used by Thanos Ruler
To create the Alertmanager service for Thanos ruler, use the following command:

```sh
helm install alertmanager prometheus-community/alertmanager --namespace monitoring
```

## 🔗 Create a Remote-Write Service for Thanos and Prometheus
To create a remote-write service for Thanos and Prometheus, use the following command:

```sh
helm install thanos-remote-write bitnami/thanos --namespace monitoring --set component=sidecar
```

For more details, refer to the Bitnami Thanos Helm chart documentation: [Bitnami Thanos](https://artifacthub.io/packages/helm/bitnami/thanos)