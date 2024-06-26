% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/users.R
\name{update_user}
\alias{update_user}
\alias{usersUpdate}
\title{Replace a user.}
\usage{
update_user(
  client,
  id,
  active = NULL,
  display_name = NULL,
  emails = NULL,
  entitlements = NULL,
  external_id = NULL,
  groups = NULL,
  name = NULL,
  roles = NULL,
  schemas = NULL,
  user_name = NULL
)

usersUpdate(
  client,
  id,
  active = NULL,
  display_name = NULL,
  emails = NULL,
  entitlements = NULL,
  external_id = NULL,
  groups = NULL,
  name = NULL,
  roles = NULL,
  schemas = NULL,
  user_name = NULL
)
}
\arguments{
\item{client}{Required. Instance of DatabricksClient()}

\item{id}{Databricks user ID.}

\item{active}{If this user is active.}

\item{display_name}{String that represents a concatenation of given and family names.}

\item{emails}{All the emails associated with the Databricks user.}

\item{entitlements}{Entitlements assigned to the user.}

\item{external_id}{External ID is not currently supported.}

\item{groups}{This field has no description yet.}

\item{name}{This field has no description yet.}

\item{roles}{Corresponds to AWS instance profile/arn role.}

\item{schemas}{The schema of the user.}

\item{user_name}{Email address of the Databricks user.}
}
\description{
Replaces a user's information with the data supplied in request.
}
