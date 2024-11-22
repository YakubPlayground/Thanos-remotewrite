# Thanos Deployment Status

## Deployed Services

### Thanos
- **Name:** thanos
- **Last Deployed:** Fri Nov 22 15:40:32 2024
- **Namespace:** monitoring
- **Status:** deployed
- **Revision:** 1
- **Chart Version:** 15.8.1
- **App Version:** 0.36.1
- **Components Enabled:**
    - Thanos Query
- **Access DNS:** `thanos-query.monitoring.svc.cluster.local` (port 9090)

### Thanos Frontend
- **Name:** thanos-frontend
- **Last Deployed:** Fri Nov 22 15:40:36 2024
- **Namespace:** monitoring
- **Status:** deployed
- **Revision:** 1
- **Chart Version:** 15.8.1
- **App Version:** 0.36.1
- **Components Enabled:**
    - Thanos Query
- **Access DNS:** `thanos-frontend-query.monitoring.svc.cluster.local` (port 9090)

### Thanos Query
- **Name:** thanos-query
- **Last Deployed:** Fri Nov 22 15:40:42 2024
- **Namespace:** monitoring
- **Status:** deployed
- **Revision:** 1
- **Chart Version:** 15.8.1
- **App Version:** 0.36.1
- **Components Enabled:**
    - Thanos Query
- **Access DNS:** `thanos-query-query.monitoring.svc.cluster.local` (port 9090)

### Thanos Receiver
- **Name:** thanos-receiver
- **Last Deployed:** Fri Nov 22 15:40:46 2024
- **Namespace:** monitoring
- **Status:** deployed
- **Revision:** 1
- **Chart Version:** 15.8.1
- **App Version:** 0.36.1
- **Components Enabled:**
    - Thanos Query
- **Access DNS:** `thanos-receiver-query.monitoring.svc.cluster.local` (port 9090)

### Thanos Storage Gateway
- **Name:** thanos-storage-gateway
- **Last Deployed:** Fri Nov 22 15:40:50 2024
- **Namespace:** monitoring
- **Status:** deployed
- **Revision:** 1
- **Chart Version:** 15.8.1
- **App Version:** 0.36.1
- **Components Enabled:**
    - Thanos Query
- **Access DNS:** `thanos-storage-gateway-query.monitoring.svc.cluster.local` (port 9090)

### Thanos Remote Write
- **Name:** thanos-remote-write
- **Last Deployed:** Fri Nov 22 15:40:56 2024
- **Namespace:** monitoring
- **Status:** deployed
- **Revision:** 1
- **Chart Version:** 15.8.1
- **App Version:** 0.36.1
- **Components Enabled:**
    - Thanos Query
- **Access DNS:** `thanos-remote-write-query.monitoring.svc.cluster.local` (port 9090)

## Failed Services

### Alertmanager
- **Error:** INSTALLATION FAILED: chart "alertmanager" matching not found in bitnami index. (try 'helm repo update'): no chart name found