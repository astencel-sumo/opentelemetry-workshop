# OpenTelemetry Workshop

## What is OpenTelemetry

Short presentation on what is OpenTelemetry in general, what it can be used for: [Observability 2.0 vs OpenTelemetry](https://slides.com/perk/obsevability-20-feat-opentelemetry)

## Data creation

* Write a simple application which creates logs, metrics and traces using the OpenTelemetry libraries

## Data collection

### OpenTelemetry Collector Distributions

* Core and contrib
* Custom / vendor provided

### Receivers

* Logs
  * Filelog
    * operator - router
    * multiline logs
  * Syslog

* Metrics
  * Host Metrics
  * docker_stats or podman stats
  * Simple Prometheus
  * Prometheus
  * Carbon
  * nginx

* Traces
  * OTLP

### Processors

### Exporters
  
* File
* OTLP
* Load balancing
* Prometheus Remote Write
* Sumo Logic

## The Coffee Bar app