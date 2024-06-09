+++
title = 'Logging in .NET with OpenTelemetry and Loki'
date = 2024-06-07T17:52:17+01:00
draft = true
tags = [
    ".net",
    "opentelemetry",
    "loki"
]
+++

# Background

[OpenTelemetry](https://opentelemetry.io/) is quickly becoming the industry standard for observability, but in my opinion its uptake in the .NET world has been slow compared to other languages.

Grafana Loki is a robust system designed for storing, aggregating, and querying logs. It integrates well with OpenTelemetry and the Grafana dashboard, which we will use to visualise these logs.

Here I will describe how you can configure your .NET application to log to the [OpenTelemetry collector](https://github.com/open-telemetry/opentelemetry-collector) and from there, ship those logs to Loki to visualise them in Grafana.

We'll use Docker to run our application in a production-like environment.