% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/repos.R
\name{get_repo_permission_levels}
\alias{get_repo_permission_levels}
\alias{reposGetPermissionLevels}
\title{Get repo permission levels.}
\usage{
get_repo_permission_levels(client, repo_id)

reposGetPermissionLevels(client, repo_id)
}
\arguments{
\item{client}{Required. Instance of DatabricksClient()}

\item{repo_id}{Required. The repo for which to get or manage permissions.}
}
\description{
Gets the permission levels that a user can have on an object.
}
