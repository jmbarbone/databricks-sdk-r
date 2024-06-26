% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/experiments.R
\name{log_experiment_batch}
\alias{log_experiment_batch}
\alias{experimentsLogBatch}
\title{Log a batch.}
\usage{
log_experiment_batch(
  client,
  metrics = NULL,
  params = NULL,
  run_id = NULL,
  tags = NULL
)

experimentsLogBatch(
  client,
  metrics = NULL,
  params = NULL,
  run_id = NULL,
  tags = NULL
)
}
\arguments{
\item{client}{Required. Instance of DatabricksClient()}

\item{metrics}{Metrics to log.}

\item{params}{Params to log.}

\item{run_id}{ID of the run to log under.}

\item{tags}{Tags to log.}
}
\description{
Logs a batch of metrics, params, and tags for a run. If any data failed to be
persisted, the server will respond with an error (non-200 status code).
}
\details{
In case of error (due to internal server error or an invalid request),
partial data may be written.

You can write metrics, params, and tags in interleaving fashion, but within a
given entity type are guaranteed to follow the order specified in the request
body.

The overwrite behavior for metrics, params, and tags is as follows:
\itemize{
\item Metrics: metric values are never overwritten. Logging a metric (key, value,
timestamp) appends to the set of values for the metric with the provided key.
\item Tags: tag values can be overwritten by successive writes to the same tag
key. That is, if multiple tag values with the same key are provided in the
same API request, the last-provided tag value is written. Logging the same
tag (key, value) is permitted. Specifically, logging a tag is idempotent.
\item Parameters: once written, param values cannot be changed (attempting to
overwrite a param value will result in an error). However, logging the same
param (key, value) is permitted. Specifically, logging a param is idempotent.
}

Request Limits ------------------------------- A single JSON-serialized API
request may be up to 1 MB in size and contain:
\itemize{
\item No more than 1000 metrics, params, and tags in total * Up to 1000 metrics *
Up to 100 params * Up to 100 tags
}

For example, a valid request might contain 900 metrics, 50 params, and 50
tags, but logging 900 metrics, 50 params, and 51 tags is invalid.

The following limits also apply to metric, param, and tag keys and values:
\itemize{
\item Metric keys, param keys, and tag keys can be up to 250 characters in length
\item Parameter and tag values can be up to 250 characters in length
}
}
