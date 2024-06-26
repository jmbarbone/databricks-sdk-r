% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/model_registry.R
\name{update_model_permissions}
\alias{update_model_permissions}
\alias{modelRegistryUpdatePermissions}
\title{Update registered model permissions.}
\usage{
update_model_permissions(
  client,
  registered_model_id,
  access_control_list = NULL
)

modelRegistryUpdatePermissions(
  client,
  registered_model_id,
  access_control_list = NULL
)
}
\arguments{
\item{client}{Required. Instance of DatabricksClient()}

\item{registered_model_id}{Required. The registered model for which to get or manage permissions.}

\item{access_control_list}{This field has no description yet.}
}
\description{
Updates the permissions on a registered model. Registered models can inherit
permissions from their root object.
}
