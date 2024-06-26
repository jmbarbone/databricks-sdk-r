% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pipelines.R
\name{stop_pipeline}
\alias{stop_pipeline}
\alias{pipelinesStop}
\title{Stop a pipeline.}
\usage{
stop_pipeline(client, pipeline_id)

pipelinesStop(client, pipeline_id)
}
\arguments{
\item{client}{Required. Instance of DatabricksClient()}

\item{pipeline_id}{Required. This field has no description yet.}
}
\description{
Stops the pipeline by canceling the active update. If there is no active
update for the pipeline, this request is a no-op.
}
