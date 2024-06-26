% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/secrets.R
\name{create_secret_scope}
\alias{create_secret_scope}
\alias{secretsCreateScope}
\title{Create a new secret scope.}
\usage{
create_secret_scope(
  client,
  scope,
  backend_azure_keyvault = NULL,
  initial_manage_principal = NULL,
  scope_backend_type = NULL
)

secretsCreateScope(
  client,
  scope,
  backend_azure_keyvault = NULL,
  initial_manage_principal = NULL,
  scope_backend_type = NULL
)
}
\arguments{
\item{client}{Required. Instance of DatabricksClient()}

\item{scope}{Required. Scope name requested by the user.}

\item{backend_azure_keyvault}{The metadata for the secret scope if the type is \code{AZURE_KEYVAULT}.}

\item{initial_manage_principal}{The principal that is initially granted \code{MANAGE} permission to the created scope.}

\item{scope_backend_type}{The backend type the scope will be created with.}
}
\description{
The scope name must consist of alphanumeric characters, dashes, underscores,
and periods, and may not exceed 128 characters.
}
