% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/serving_endpoints.R
\name{create_serving_endpoint}
\alias{create_serving_endpoint}
\alias{servingEndpointsCreate}
\title{Create a new serving endpoint.}
\usage{
create_serving_endpoint(client, name, config, rate_limits = NULL, tags = NULL)

servingEndpointsCreate(client, name, config, rate_limits = NULL, tags = NULL)
}
\arguments{
\item{client}{Required. Instance of DatabricksClient()}

\item{name}{Required. The name of the serving endpoint.}

\item{config}{Required. The core config of the serving endpoint.}

\item{rate_limits}{Rate limits to be applied to the serving endpoint.}

\item{tags}{Tags to be attached to the serving endpoint and automatically propagated to billing logs.}
}
\description{
Create a new serving endpoint.
}
