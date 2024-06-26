% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/jobs.R
\name{set_job_permissions}
\alias{set_job_permissions}
\alias{jobsSetPermissions}
\title{Set job permissions.}
\usage{
set_job_permissions(client, job_id, access_control_list = NULL)

jobsSetPermissions(client, job_id, access_control_list = NULL)
}
\arguments{
\item{client}{Required. Instance of DatabricksClient()}

\item{job_id}{Required. The job for which to get or manage permissions.}

\item{access_control_list}{This field has no description yet.}
}
\description{
Sets permissions on a job. Jobs can inherit permissions from their root
object.
}
