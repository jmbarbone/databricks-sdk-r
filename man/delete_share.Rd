% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/shares.R
\name{delete_share}
\alias{delete_share}
\alias{sharesDelete}
\title{Delete a share.}
\usage{
delete_share(client, name)

sharesDelete(client, name)
}
\arguments{
\item{client}{Required. Instance of DatabricksClient()}

\item{name}{Required. The name of the share.}
}
\description{
Deletes a data object share from the metastore. The caller must be an owner
of the share.
}
