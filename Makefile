PROMETHEUS_PORT?=9090
GRAFANA_PORT?=3000
METRICS_PATH?=/metrics
METRICS_HOST?=host.docker.internal
METRICS_PORT?=8081

.PHONY: start
start:
	@ \
		METRICS_PATH=$(METRICS_PATH) \
		METRICS_HOST=$(METRICS_HOST) \
		METRICS_PORT=$(METRICS_PORT) \
		./prometheus/prometheus.sh && \
		PROMETHEUS_PORT=$(PROMETHEUS_PORT) \
		GRAFANA_PORT=$(GRAFANA_PORT) \
		docker-compose up -d

.PHONY: stop
stop:
	@ \
		PROMETHEUS_PORT=$(PROMETHEUS_PORT) \
		GRAFANA_PORT=$(GRAFANA_PORT) \
		docker-compose down -v --rmi local
	@ rm -f ./prometheus/prometheus.yml
