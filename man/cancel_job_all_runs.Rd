% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/jobs.R
\name{cancel_job_all_runs}
\alias{cancel_job_all_runs}
\alias{jobsCancelAllRuns}
\title{Cancel all runs of a job.}
\usage{
cancel_job_all_runs(client, all_queued_runs = NULL, job_id = NULL)

jobsCancelAllRuns(client, all_queued_runs = NULL, job_id = NULL)
}
\arguments{
\item{client}{Required. Instance of DatabricksClient()}

\item{all_queued_runs}{Optional boolean parameter to cancel all queued runs.}

\item{job_id}{The canonical identifier of the job to cancel all runs of.}
}
\description{
Cancels all active runs of a job. The runs are canceled asynchronously, so it
doesn't prevent new runs from being started.
}
