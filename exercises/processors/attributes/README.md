# Attributes Processor exercise

Whenever you need to modify attributes of a log, metric or span you can use the Attributes Processor.

* Run the otelcol instance using the prepared [config](config.yaml) file.

  ```bash
  otelcol-contrib --config config.yaml
  ```
  Notice that Resource Detection processor has been used, and two resource labels has been added:

  ```text
  Resource labels:
     -> host.name: STRING(lolcathost)
     -> os.type: STRING(linux)
  ```

* Read the [Attributes Processor documentation](https://github.com/open-telemetry/opentelemetry-collector-contrib/tree/v0.51.0/processor/attributesprocessor)

* Using the Attributes Processor insert `my.custom.attribute` attribute with `my custom value` value

* Try renaming the `host.name` attribute to just `host`. You may need to create new attribute and delete the old one.
