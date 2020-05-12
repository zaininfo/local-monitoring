echo \
"global:
  scrape_interval: 15s
  scrape_timeout: 10s
  evaluation_interval: 15s
alerting:
  alertmanagers:
    - static_configs:
        - targets: []
      scheme: http
      timeout: 10s
      api_version: v1
scrape_configs:
  - job_name: prometheus
    honor_timestamps: true
    scrape_interval: 15s
    scrape_timeout: 10s
    metrics_path: ${METRICS_PATH}
    scheme: http
    static_configs:
      - targets:
          - ${METRICS_HOST}:${METRICS_PORT}" \
  > ./prometheus/prometheus.yml
