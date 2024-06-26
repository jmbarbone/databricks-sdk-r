% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/workspace.R
\name{get_notebook_status}
\alias{get_notebook_status}
\alias{workspaceGetStatus}
\title{Get status.}
\usage{
get_notebook_status(client, path)

workspaceGetStatus(client, path)
}
\arguments{
\item{client}{Required. Instance of DatabricksClient()}

\item{path}{Required. The absolute path of the notebook or directory.}
}
\description{
Gets the status of an object or a directory. If \code{path} does not exist, this
call returns an error \code{RESOURCE_DOES_NOT_EXIST}.
}
