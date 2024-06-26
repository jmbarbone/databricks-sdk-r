% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cluster_policies.R
\name{update_cluster_policy_permissions}
\alias{update_cluster_policy_permissions}
\alias{clusterPoliciesUpdatePermissions}
\title{Update cluster policy permissions.}
\usage{
update_cluster_policy_permissions(
  client,
  cluster_policy_id,
  access_control_list = NULL
)

clusterPoliciesUpdatePermissions(
  client,
  cluster_policy_id,
  access_control_list = NULL
)
}
\arguments{
\item{client}{Required. Instance of DatabricksClient()}

\item{cluster_policy_id}{Required. The cluster policy for which to get or manage permissions.}

\item{access_control_list}{This field has no description yet.}
}
\description{
Updates the permissions on a cluster policy. Cluster policies can inherit
permissions from their root object.
}
