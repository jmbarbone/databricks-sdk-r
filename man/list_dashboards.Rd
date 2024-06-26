% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dashboards.R
\name{list_dashboards}
\alias{list_dashboards}
\alias{dashboardsList}
\title{Get dashboard objects.}
\usage{
list_dashboards(client, order = NULL, page = NULL, page_size = NULL, q = NULL)

dashboardsList(client, order = NULL, page = NULL, page_size = NULL, q = NULL)
}
\arguments{
\item{client}{Required. Instance of DatabricksClient()}

\item{order}{Name of dashboard attribute to order by.}

\item{page}{Page number to retrieve.}

\item{page_size}{Number of dashboards to return per page.}

\item{q}{Full text search term.}
}
\value{
\code{data.frame} with all of the response pages.
}
\description{
Fetch a paginated list of dashboard objects.
}
\details{
\subsection{**Warning: Calling this API concurrently 10 or more times could result in}{

throttling, service degradation, or a temporary ban.**
}
}
