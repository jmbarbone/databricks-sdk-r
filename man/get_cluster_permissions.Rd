% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clusters.R
\name{get_cluster_permissions}
\alias{get_cluster_permissions}
\alias{clustersGetPermissions}
\title{Get cluster permissions.}
\usage{
get_cluster_permissions(client, cluster_id)

clustersGetPermissions(client, cluster_id)
}
\arguments{
\item{client}{Required. Instance of DatabricksClient()}

\item{cluster_id}{Required. The cluster for which to get or manage permissions.}
}
\description{
Gets the permissions of a cluster. Clusters can inherit permissions from
their root object.
}
