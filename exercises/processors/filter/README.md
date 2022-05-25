# Filter Processor exercise

Whenever you need to filter out logs or metrics you can use the Filter Processor.

* Run the otelcol instance using the prepared [config](config.yaml) file.

  ```bash
  otelcol-contrib --config config.yaml
  ```

  You should see some load metrics coming in, such as:

  ```text
  system.cpu.load_average.1m
  system.cpu.load_average.5m
  system.cpu.load_average.15m
  ```

* Read the [Filter Processor documentation](https://github.com/open-telemetry/opentelemetry-collector-contrib/tree/v0.51.0/processor/filterprocessor)

* Use the filter processor to exclude all the metrics starting with `system.cpu.load_average.1` prefix

* You should get the `system.cpu.load_average.5m` metric only at this point
