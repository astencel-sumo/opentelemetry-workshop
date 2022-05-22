# Docker Stats Receiver exercise

* Run Docker container:

  ```bash
  docker run --name sleepy-busybox -d busybox sleep infinity
  ```

* Read the [Docker Stats Receiver documentation](https://github.com/open-telemetry/opentelemetry-collector-contrib/tree/v0.51.0/receiver/dockerstatsreceiver)

* Add the `docker_stats` receiver to the [config.yaml](./config.yaml) file. Set the `collection_interval` to 3s.

* Run otelcol-contrib for a short amount of time, you should see metrics coming in with the similar log line:

  ```text
  2022-05-21T19:01:37.982+0200	INFO	loggingexporter/logging_exporter.go:56	MetricsExporter	{"#metrics": 53}
  ```

* Open the newly created `metrics.json` file with the text editor of your choice. See what metrics have been collected.

* Run second container which is based on Ubuntu this time:

  ```bash
  docker run --name sleepy-ubuntu -d ubuntu sleep infinity
  ```

* Again run `otelcol-contrib` for a short amount of time, collect some metrics.

* Open the `metrics.json` file. Notice if you have metrics about both containers.

* Change the [config.yaml](./config.yaml) file by adding the `exclude_images` key. Exclude the `busybox` images. Run `otelcol-contrib` for some time.

* Open the `metrics.json` file. Notice that metrics about the `busybox` image based container were not collected.

* Remove both running containers:

  ```bash
  docker rm -f sleepy-ubuntu sleepy-busybox
  ```
