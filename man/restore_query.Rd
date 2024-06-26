% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/queries.R
\name{restore_query}
\alias{restore_query}
\alias{queriesRestore}
\title{Restore a query.}
\usage{
restore_query(client, query_id)

queriesRestore(client, query_id)
}
\arguments{
\item{client}{Required. Instance of DatabricksClient()}

\item{query_id}{Required. This field has no description yet.}
}
\description{
Restore a query that has been moved to the trash. A restored query appears in
list views and searches. You can use restored queries for alerts.
}
