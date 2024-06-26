% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/secrets.R
\name{get_secret_acl}
\alias{get_secret_acl}
\alias{secretsGetAcl}
\title{Get secret ACL details.}
\usage{
get_secret_acl(client, scope, principal)

secretsGetAcl(client, scope, principal)
}
\arguments{
\item{client}{Required. Instance of DatabricksClient()}

\item{scope}{Required. The name of the scope to fetch ACL information from.}

\item{principal}{Required. The principal to fetch ACL information for.}
}
\description{
Gets the details about the given ACL, such as the group and permission. Users
must have the \code{MANAGE} permission to invoke this API.
}
\details{
Throws \code{RESOURCE_DOES_NOT_EXIST} if no such secret scope exists. Throws
\code{PERMISSION_DENIED} if the user does not have permission to make this API
call.
}
