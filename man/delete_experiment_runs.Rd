% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/experiments.R
\name{delete_experiment_runs}
\alias{delete_experiment_runs}
\alias{experimentsDeleteRuns}
\title{Delete runs by creation time.}
\usage{
delete_experiment_runs(
  client,
  experiment_id,
  max_timestamp_millis,
  max_runs = NULL
)

experimentsDeleteRuns(
  client,
  experiment_id,
  max_timestamp_millis,
  max_runs = NULL
)
}
\arguments{
\item{client}{Required. Instance of DatabricksClient()}

\item{experiment_id}{Required. The ID of the experiment containing the runs to delete.}

\item{max_timestamp_millis}{Required. The maximum creation timestamp in milliseconds since the UNIX epoch for deleting runs.}

\item{max_runs}{An optional positive integer indicating the maximum number of runs to delete.}
}
\description{
Bulk delete runs in an experiment that were created prior to or at the
specified timestamp. Deletes at most max_runs per request. To call this API
from a Databricks Notebook in Python, you can use the client code snippet on
https://learn.microsoft.com/en-us/azure/databricks/mlflow/runs#bulk-delete.
}
