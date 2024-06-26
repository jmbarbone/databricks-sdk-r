% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/restrict_workspace_admins.R
\name{update_restrict_workspace_admin}
\alias{update_restrict_workspace_admin}
\alias{restrictWorkspaceAdminsUpdate}
\title{Update the restrict workspace admins setting.}
\usage{
update_restrict_workspace_admin(client, allow_missing, setting, field_mask)

restrictWorkspaceAdminsUpdate(client, allow_missing, setting, field_mask)
}
\arguments{
\item{client}{Required. Instance of DatabricksClient()}

\item{allow_missing}{Required. This should always be set to true for Settings API.}

\item{setting}{Required. This field has no description yet.}

\item{field_mask}{Required. Field mask is required to be passed into the PATCH request.}
}
\description{
Updates the restrict workspace admins setting for the workspace. A fresh etag
needs to be provided in \code{PATCH} requests (as part of the setting field). The
etag can be retrieved by making a GET request before the \code{PATCH} request. If
the setting is updated concurrently, \code{PATCH} fails with 409 and the request
must be retried by using the fresh etag in the 409 response.
}
