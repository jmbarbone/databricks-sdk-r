% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/providers.R
\name{list_providers}
\alias{list_providers}
\alias{providersList}
\title{List providers.}
\usage{
list_providers(client, data_provider_global_metastore_id = NULL)

providersList(client, data_provider_global_metastore_id = NULL)
}
\arguments{
\item{client}{Required. Instance of DatabricksClient()}

\item{data_provider_global_metastore_id}{If not provided, all providers will be returned.}
}
\value{
\code{data.frame} with all of the response pages.
}
\description{
Gets an array of available authentication providers. The caller must either
be a metastore admin or the owner of the providers. Providers not owned by
the caller are not included in the response. There is no guarantee of a
specific ordering of the elements in the array.
}
