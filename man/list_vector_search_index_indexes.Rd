% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vector_search_indexes.R
\name{list_vector_search_index_indexes}
\alias{list_vector_search_index_indexes}
\alias{vectorSearchIndexesListIndexes}
\title{List indexes.}
\usage{
list_vector_search_index_indexes(client, endpoint_name, page_token = NULL)

vectorSearchIndexesListIndexes(client, endpoint_name, page_token = NULL)
}
\arguments{
\item{client}{Required. Instance of DatabricksClient()}

\item{endpoint_name}{Required. Name of the endpoint.}

\item{page_token}{Token for pagination.}
}
\value{
\code{data.frame} with all of the response pages.
}
\description{
List all indexes in the given endpoint.
}
