# Host Metrics Receiver workshop - steps to follow

* Take a look at the [config.yaml](config.yaml) configuration file and run `otelcol` with this config locally

  ```bash
  otelcol-contrib --config config.yaml
  ```

* Read the [Host Metrics Receiver documentation](https://github.com/open-telemetry/opentelemetry-collector-contrib/tree/v0.51.0/receiver/hostmetricsreceiver)

* Add the following scrapers: `filesystem`, `memory`, `network`

* change the scraping interval for `load` to 15s, leave the other scrapers at default
