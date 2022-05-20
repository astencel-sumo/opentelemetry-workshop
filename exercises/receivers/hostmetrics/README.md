# Host Metrics Receiver workshop - steps to follow

* Take a look at the provided simple configuration and run it locally

* Go to the [Host Metrics Receiver documentation](https://github.com/open-telemetry/opentelemetry-collector-contrib/tree/v0.51.0/receiver/hostmetricsreceiver)

* Add the following scrapers: `filesystem`, `memory`, `network`

* change the scraping interval for `load` to 15s, leave the other scrapers at default
