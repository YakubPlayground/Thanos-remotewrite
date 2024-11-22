# Create the Minikube environment
minikube start

# Install Helm if it is not already installed
if ! command -v helm &> /dev/null
then
    echo "Helm could not be found, installing..."
    curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
fi

# Create the monitoring namespace
kubectl create namespace monitoring
kubectl  get namespaces
