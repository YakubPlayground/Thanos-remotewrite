# Prometheus Metrics

You can access the Prometheus metrics from the following URL:
[Prometheus Metrics](https://automatic-doodle-7pp46p4px76fpgpw-9090.app.github.dev/metrics)

Here are some common Prometheus metrics you might find useful:

## General Metrics
- `up`: Status of the Prometheus target (1 for up, 0 for down).
- `scrape_duration_seconds`: Time taken to scrape the target.
- `scrape_samples_post_metric_relabeling`: Number of samples remaining after metric relabeling.

## CPU Metrics
- `node_cpu_seconds_total`: Total CPU time spent in various modes (user, system, idle, etc.).
- `process_cpu_seconds_total`: Total user and system CPU time spent in seconds.

## Memory Metrics
- `node_memory_MemAvailable_bytes`: Available memory in bytes.
- `node_memory_MemFree_bytes`: Free memory in bytes.
- `process_resident_memory_bytes`: Resident memory size in bytes.

## Disk Metrics
- `node_disk_read_bytes_total`: Total number of bytes read from disk.
- `node_disk_write_bytes_total`: Total number of bytes written to disk.

## Network Metrics
- `node_network_receive_bytes_total`: Total number of bytes received over the network.
- `node_network_transmit_bytes_total`: Total number of bytes transmitted over the network.

## HTTP Request Metrics
- `http_requests_total`: Total number of HTTP requests received.
- `http_request_duration_seconds`: Duration of HTTP requests in seconds.

## Application-Specific Metrics
- `myapp_requests_total`: Total number of requests received by your application.
- `myapp_request_duration_seconds`: Duration of requests handled by your application.

For more detailed metrics, you can explore the `/metrics` endpoint directly.

## Other Endpoints

### Alertmanager
You can access the Alertmanager UI from the following URL:
[Alertmanager](https://automatic-doodle-7pp46p4px76fpgpw-9093.app.github.dev)

### Grafana
You can access the Grafana dashboards from the following URL:
[Grafana](https://automatic-doodle-7pp46p4px76fpgpw-3000.app.github.dev)

### Thanos Query
You can access the Thanos Query UI from the following URL:
[Thanos Query](https://automatic-doodle-7pp46p4px76fpgpw-10902.app.github.dev)

### Thanos Store
You can access the Thanos Store UI from the following URL:
[Thanos Store](https://automatic-doodle-7pp46p4px76fpgpw-10903.app.github.dev)

### Thanos Ruler
You can access the Thanos Ruler UI from the following URL:
[Thanos Ruler](https://automatic-doodle-7pp46p4px76fpgpw-10904.app.github.dev)

For more information on each component, refer to the official documentation.
## Service Endpoints

### Prometheus
- `/metrics`: Exposes Prometheus metrics. This is the default endpoint where Prometheus scrapes metrics from your application. It uses the Prometheus text exposition format, which is a simple, human-readable representation of metric names, values, and optional labels.
- `/federate`: Allows you to federate metrics from one Prometheus server to another.
- `/targets`: Provides information about the current state of the targets being scraped by Prometheus.
- `/alerts`: Shows the current state of the alert manager.
- `/rules`: Displays the current state of the recording and alerting rules.

### Alertmanager
- `/alertmanager`: Access the Alertmanager UI.

### Grafana
- `/grafana`: Access the Grafana dashboards.

### Thanos Query
- `/thanos-query`: Access the Thanos Query UI.

### Thanos Store
- `/thanos-store`: Access the Thanos Store UI.

### Thanos Ruler
- `/thanos-ruler`: Access the Thanos Ruler UI.