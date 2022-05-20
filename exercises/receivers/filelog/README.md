# Filelog Receiver workshop - steps to follow

* Run the collector:

```bash
otelcol-contrib --config config.yaml
```

* Visit the documentation: https://github.com/open-telemetry/opentelemetry-collector-contrib/tree/main/receiver/filelogreceiver

* Find out which OTC version you use

```bash
otelcol-contrib --version
```

* Change documentation version on GitHub to the one you actually use

* Change the configuration to read from the beginning of the file.

* Change the configuration to drop the file name and include the resolved path using the `include_file_path_resolved` property.

* 