% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/restrict_workspace_admins.R
\name{delete_restrict_workspace_admin}
\alias{delete_restrict_workspace_admin}
\alias{restrictWorkspaceAdminsDelete}
\title{Delete the restrict workspace admins setting.}
\usage{
delete_restrict_workspace_admin(client, etag = NULL)

restrictWorkspaceAdminsDelete(client, etag = NULL)
}
\arguments{
\item{client}{Required. Instance of DatabricksClient()}

\item{etag}{etag used for versioning.}
}
\description{
Reverts the restrict workspace admins setting status for the workspace. A
fresh etag needs to be provided in \code{DELETE} requests (as a query parameter).
The etag can be retrieved by making a \code{GET} request before the DELETE
request. If the setting is updated/deleted concurrently, \code{DELETE} fails with
409 and the request must be retried by using the fresh etag in the 409
response.
}
