% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vector_search_indexes.R
\name{sync_vector_search_index}
\alias{sync_vector_search_index}
\alias{vectorSearchIndexesSyncIndex}
\title{Synchronize an index.}
\usage{
sync_vector_search_index(client, index_name)

vectorSearchIndexesSyncIndex(client, index_name)
}
\arguments{
\item{client}{Required. Instance of DatabricksClient()}

\item{index_name}{Required. Name of the vector index to synchronize.}
}
\description{
Triggers a synchronization process for a specified vector index.
}
