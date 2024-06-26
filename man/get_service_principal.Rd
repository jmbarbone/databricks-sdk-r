% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/service_principals.R
\name{get_service_principal}
\alias{get_service_principal}
\alias{servicePrincipalsGet}
\title{Get service principal details.}
\usage{
get_service_principal(client, id)

servicePrincipalsGet(client, id)
}
\arguments{
\item{client}{Required. Instance of DatabricksClient()}

\item{id}{Required. Unique ID for a service principal in the Databricks workspace.}
}
\description{
Gets the details for a single service principal define in the Databricks
workspace.
}
