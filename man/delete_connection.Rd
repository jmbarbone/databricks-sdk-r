% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/connections.R
\name{delete_connection}
\alias{delete_connection}
\alias{connectionsDelete}
\title{Delete a connection.}
\usage{
delete_connection(client, name)

connectionsDelete(client, name)
}
\arguments{
\item{client}{Required. Instance of DatabricksClient()}

\item{name}{Required. The name of the connection to be deleted.}
}
\description{
Deletes the connection that matches the supplied name.
}
