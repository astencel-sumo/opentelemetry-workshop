# Steps to follow

* Consult the configuration stored in the `config.yaml` file:

  ```bash
  cat config.yaml
  ```

* Run the collector:

  ```bash
  otelcol-contrib --config config.yaml
  ```

* Visit the receiver documentation: https://github.com/open-telemetry/opentelemetry-collector/tree/main/receiver/otlpreceiver

* Visit the exporter documentation: https://github.com/open-telemetry/opentelemetry-collector/tree/main/exporter/loggingexporter

* Find out which otelcol version you use

  ```bash
  otelcol-contrib --version
  ```

* Make sure to use proper documenation version on GitHub using the git branch, eg. `release/v0.51.x`

* Check if otelcol is available on localhost:4318

  ```bash
  telnet localhost 4318
  ```

* Check if otelcol exposes Promethues metrics

  ```bash
  curl localhost:8888/metrics
  ```

* Check out the Core Distro components:
  * receivers: https://github.com/open-telemetry/opentelemetry-collector/tree/main/receiver
  * processors: https://github.com/open-telemetry/opentelemetry-collector/tree/main/processor
  * exporter: https://github.com/open-telemetry/opentelemetry-collector/tree/main/exporter

* Check out what is actually built into distributions:
  * otelcol: https://github.com/open-telemetry/opentelemetry-collector-releases/blob/main/distributions/otelcol/manifest.yaml
  * otelcol-contrib: https://github.com/open-telemetry/opentelemetry-collector-releases/blob/main/distributions/otelcol-contrib/manifest.yaml

* You can check that `kafkareceiver` is included in core distro