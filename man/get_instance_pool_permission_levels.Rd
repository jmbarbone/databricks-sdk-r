% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/instance_pools.R
\name{get_instance_pool_permission_levels}
\alias{get_instance_pool_permission_levels}
\alias{instancePoolsGetPermissionLevels}
\title{Get instance pool permission levels.}
\usage{
get_instance_pool_permission_levels(client, instance_pool_id)

instancePoolsGetPermissionLevels(client, instance_pool_id)
}
\arguments{
\item{client}{Required. Instance of DatabricksClient()}

\item{instance_pool_id}{Required. The instance pool for which to get or manage permissions.}
}
\description{
Gets the permission levels that a user can have on an object.
}
