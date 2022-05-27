# Filelog Receiver exercise

* Run the collector:

```bash
otelcol-contrib --config config.yaml
```

* Change the configuration to read from the beginning of the file.

* Change the configuration to drop the file name and include the resolved path using the `include_file_path_resolved` property.

* 