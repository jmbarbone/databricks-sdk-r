% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/experiments.R
\name{create_experiment_run}
\alias{create_experiment_run}
\alias{experimentsCreateRun}
\title{Create a run.}
\usage{
create_experiment_run(
  client,
  experiment_id = NULL,
  start_time = NULL,
  tags = NULL,
  user_id = NULL
)

experimentsCreateRun(
  client,
  experiment_id = NULL,
  start_time = NULL,
  tags = NULL,
  user_id = NULL
)
}
\arguments{
\item{client}{Required. Instance of DatabricksClient()}

\item{experiment_id}{ID of the associated experiment.}

\item{start_time}{Unix timestamp in milliseconds of when the run started.}

\item{tags}{Additional metadata for run.}

\item{user_id}{ID of the user executing the run.}
}
\description{
Creates a new run within an experiment. A run is usually a single execution
of a machine learning or data ETL pipeline. MLflow uses runs to track the
\code{mlflowParam}, \code{mlflowMetric} and \code{mlflowRunTag} associated with a single
execution.
}
