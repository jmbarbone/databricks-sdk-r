% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/serving_endpoints.R
\name{get_serving_endpoint_permissions}
\alias{get_serving_endpoint_permissions}
\alias{servingEndpointsGetPermissions}
\title{Get serving endpoint permissions.}
\usage{
get_serving_endpoint_permissions(client, serving_endpoint_id)

servingEndpointsGetPermissions(client, serving_endpoint_id)
}
\arguments{
\item{client}{Required. Instance of DatabricksClient()}

\item{serving_endpoint_id}{Required. The serving endpoint for which to get or manage permissions.}
}
\description{
Gets the permissions of a serving endpoint. Serving endpoints can inherit
permissions from their root object.
}
