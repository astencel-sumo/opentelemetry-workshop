# Metrics Transform Processor exercise

* Consult the prepared [config](config.yaml) file.

* Read the [Metrics Transform Processor documentation](https://github.com/open-telemetry/opentelemetry-collector-contrib/tree/v0.51.0/processor/metricstransformprocessor)

* To the `system.cpu.load_average.1m` metric add the `agent` label with the `otelcol {{version}}` value. You should be able to see the following output for one of the metrics only:

  ```text
  Data point attributes:
     -> agent: STRING(otelcol 0.51.0)
  ```

* Rename all the metrics names using `regexp` filter - extract the time interval from the end of the metric name and add it as suffix to the `load.` string. For example metric `system.cpu.load_average.1m` should become `load.1m`
