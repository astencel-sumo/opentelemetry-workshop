# Prometheus Exporter exercise

Some popular applications expose metrics using their own format. In order to make those metrics readable by eg. Prometheus someone needs to add an adapter or exporter.

The OpenTelemetry Collector can be used as a sidecar to expose Prometheus metrics collected in other formats.

* Let's use Redis as an example. Run the container locally:

  ```bash
  docker run --rm --name redis -d -p 127.0.0.1:6379:6379 redis
  ```

* Read the [Prometheus Exporter documentation](https://github.com/open-telemetry/opentelemetry-collector-contrib/tree/v0.51.0/receiver/prometheusexporter)

* Change the configuration to use the Prometheus Exporter and expose metrics on `127.0.0.1:12345` address. Run the collector:

  ```bash
  otelcol-contrib --config config.yaml
  ```

* In another console or in the web browser examin if metrics are exposed under [localhost:12345/metrics](http://localhost:12345/metrics)

  ```bash
  curl localhost:12345/metrics
  ```

At this point, with help of the OpenTelemetry Collector you have metrics in the Prometheus format exposed from Redis. If you use Kubernetes you can bundle Redis and otelcol within one pod to make this setup transparent to external metrics collectors.

* Notice that now you have two metrics endpoints exposed from otelcol. You have to make sure to use the one you intend.
  * at [localhost:12345/metrics](http://localhost:12345/metrics) you can see metrics collected from `Redis`
  * at [localhost:8888/metrics](http://localhost:8888/metrics) you can see telemetry metrics about the `otelcol` itself

* Delete the Redis container:

  ```bash
  docker rm -f redis
  ```
