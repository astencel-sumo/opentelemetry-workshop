# OpenTelemetry Workshop

## What is OpenTelemetry

Short presentation on what is OpenTelemetry in general, what it can be used for: [Observability 2.0 vs OpenTelemetry](https://slides.com/perk/obsevability-20-feat-opentelemetry)

## Data creation

* Write a simple application which creates logs, metrics and traces using the OpenTelemetry libraries

## Data collection

### OpenTelemetry Collector Distributions

* [Core and contrib](./exercises/core-distro/)
* Custom / vendor provided

### Basic configuration

* Basics
* Extensions
* Telemetry
* Environment variables

### Receivers

* Logs
  * [Filelog](./exercises/receivers/filelog/)
    * operator - router
    * multiline logs
  * [Syslog](./exercises/receivers/syslog/)

* Metrics
  * [Host Metrics](./exercises/receivers/hostmetrics/)
  * [Docker Stats](./exercises/receivers/dockerstats/)
  * [Simple Prometheus](./exercises/receivers/simpleprometheus/)
  * [Redis](./exercises/receivers/redisreceiver/)
  * Carbon
  * nginx

* Traces
  * OTLP

### Processors

* [Filter](./exercises/processors/filter/)
* [Resource Detection](./exercises/processors/resourcedetection/)

### Exporters
  
* [File](./exercises/exporters/file)
* [OTLP](./exercises/exporters/otlp)
* [Load balancing](./exercises/exporters/loadbalancing)
* [Prometheus Remote Write](./exercises/exporters/prometheusremotewrite)
* [Sumo Logic](./exercises/exporters/sumologic)

## The Coffee Bar app