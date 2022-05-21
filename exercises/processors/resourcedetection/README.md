# Resource Detection Processor workshop - steps to follow

* Take a look at the [config.yaml](config.yaml) configuration file and run `otelcol` with this config locally

  ```bash
  otelcol-contrib --config config.yaml
  ```

  Notice there is no information about current host. At this point, if we have sent those metrics to external backend we would not be able to tell where they originated from.

* Read the [Resource Detection Processor documentation](https://github.com/open-telemetry/opentelemetry-collector-contrib/tree/main/processor/resourcedetectionprocessor)

* Using the Resource Detection Processor add the `system` detector

* Run otelcol - you should see the following resources added with `host.name` and `os.type` matching your machine:

  ```bash
  $ otelcol-contrib --config config.yaml
  ...
  Resource labels:
     -> host.name: STRING(lolcathost)
     -> os.type: STRING(linux)
  ```

* Change the `hostname_sources` to `os`, observe if it's different from the `dns` one

* Change the configuration to read the resource information from the `OTEL_RESOURCE_ATTRIBUTE` environment variable

* Run the otelcol and observe how your resource information is added to data:

  ```bash
  $ export OTEL_RESOURCE_ATTRIBUTES=somelabel=somevalue,otherlabel=othervalue
  
  $ otelcol-contrib --config.config.yaml
  ...
  Resource labels:
     -> somelabel: STRING(somevalue)
     -> otherlabel: STRING(othervalue)
     -> host.name: STRING(lolcathost)
     -> os.type: STRING(linux)
  ```
