% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/schemas.R
\name{update_schema}
\alias{update_schema}
\alias{schemasUpdate}
\title{Update a schema.}
\usage{
update_schema(
  client,
  full_name,
  comment = NULL,
  enable_predictive_optimization = NULL,
  new_name = NULL,
  owner = NULL,
  properties = NULL
)

schemasUpdate(
  client,
  full_name,
  comment = NULL,
  enable_predictive_optimization = NULL,
  new_name = NULL,
  owner = NULL,
  properties = NULL
)
}
\arguments{
\item{client}{Required. Instance of DatabricksClient()}

\item{full_name}{Required. Full name of the schema.}

\item{comment}{User-provided free-form text description.}

\item{enable_predictive_optimization}{Whether predictive optimization should be enabled for this object and objects under it.}

\item{new_name}{New name for the schema.}

\item{owner}{Username of current owner of schema.}

\item{properties}{A map of key-value properties attached to the securable.}
}
\description{
Updates a schema for a catalog. The caller must be the owner of the schema or
a metastore admin. If the caller is a metastore admin, only the \strong{owner}
field can be changed in the update. If the \strong{name} field must be updated,
the caller must be a metastore admin or have the \strong{CREATE_SCHEMA} privilege
on the parent catalog.
}
