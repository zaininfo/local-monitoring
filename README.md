# Local monitoring
Launch local monitoring environment (Prometheus + Grafana) to test services locally.

## Requirements
- Docker Compose

## Run
To launch the monitoring environment:

    make

## Stop
To stop the monitoring environment:

    make stop

## Usage
Once the monitoring environment has been launched, the following URLs are accessible:
- **Prometheus dashboard:** [http://localhost:9090](http://localhost:9090)
- **Grafana dashboard:** [http://localhost:3000](http://localhost:3000)

Where, `9090` is the value of `PROMETHEUS_PORT` and `3000` is the value of `GRAFANA_PORT`.

The metrics exposed by your service should be available in both (it might take a few seconds for the metrics to appear, since Prometheus scrapes periodically).

## Environment variables
| Name | Description | Default value |
| --- | --- | --- |
| PROMETHEUS_PORT | Port to access Prometheus web console. | 9090 |
| GRAFANA_PORT | Port to access Grafana web console. | 3000 |
| METRICS_PATH | Path of the metrics endpoint of the service that is exposing metrics. | /metrics |
| METRICS_HOST | Host name of the service that is exposing metrics. | host.docker.internal |
| METRICS_PORT | Port of the service that is exposing metrics. | 8081 |

Note: Default value of `METRICS_HOST` will only work on macOS devices, for other OSs please, provide a suitable host name for the service that is accessible to your Docker environment.
