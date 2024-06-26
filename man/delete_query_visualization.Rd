% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/query_visualizations.R
\name{delete_query_visualization}
\alias{delete_query_visualization}
\alias{queryVisualizationsDelete}
\title{Remove visualization.}
\usage{
delete_query_visualization(client, id)

queryVisualizationsDelete(client, id)
}
\arguments{
\item{client}{Required. Instance of DatabricksClient()}

\item{id}{Required. Widget ID returned by :method:queryvizualisations/create.}
}
\description{
Remove visualization.
}
