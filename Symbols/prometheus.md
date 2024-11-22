```markdown
# Prometheus Setup Guide

This guide will help you set up Prometheus using Helm charts.

## Prerequisites

- Minikube
- Helm

## Steps

1. **Start Minikube**

    ```sh
    minikube start
    ```

2. **Check Minikube Status**

    ```sh
    minikube status
    ```

3. **Create Namespace**

    ```sh
    kubectl create namespace monitoring
    ```

4. **Add Bitnami Repository**

    ```sh
    helm repo add bitnami https://charts.bitnami.com/bitnami
    helm repo update
    ```

5. **Install Prometheus**

    ```sh
    helm install prometheus bitnami/prometheus --namespace monitoring
    ```

## References

- Bitnami for Prometheus: [Bitnami Prometheus](https://bitnami.com/stack/prometheus)
```