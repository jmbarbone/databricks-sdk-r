# Code generated from OpenAPI specs by Databricks SDK Generator. DO NOT EDIT.

#' @importFrom stats runif
NULL

#' Get all statuses.
#' 
#' Get the status of all libraries on all clusters. A status will be available
#' for all libraries installed on this cluster via the API or the libraries UI
#' as well as libraries set to be installed on all clusters via the libraries
#' UI.
#' @param client Required. Instance of DatabricksClient()
#'
#'
#' @rdname all_cluster_library_statuses
#' @alias librariesAllClusterStatuses
#' @export
all_cluster_library_statuses <- function(client) {
  client$do("GET", "/api/2.0/libraries/all-cluster-statuses")
}

#' @rdname all_cluster_library_statuses
#' @export 
librariesAllClusterStatuses <- all_cluster_library_statuses
#' Get status.
#' 
#' Get the status of libraries on a cluster. A status will be available for all
#' libraries installed on this cluster via the API or the libraries UI as well
#' as libraries set to be installed on all clusters via the libraries UI. The
#' order of returned libraries will be as follows.
#' 
#' 1. Libraries set to be installed on this cluster will be returned first.
#' Within this group, the final order will be order in which the libraries were
#' added to the cluster.
#' 
#' 2. Libraries set to be installed on all clusters are returned next. Within
#' this group there is no order guarantee.
#' 
#' 3. Libraries that were previously requested on this cluster or on all
#' clusters, but now marked for removal. Within this group there is no order
#' guarantee.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param cluster_id Required. Unique identifier of the cluster whose status should be retrieved.
#'
#' @return `data.frame` with all of the response pages.
#'
#'
#' @rdname cluster_library_status
#' @alias librariesClusterStatus
#' @export
cluster_library_status <- function(client, cluster_id) {
  query <- list(cluster_id = cluster_id)

  json <- client$do("GET", "/api/2.0/libraries/cluster-status", query = query)
  return(json$library_statuses)

}

#' @rdname cluster_library_status
#' @export 
librariesClusterStatus <- cluster_library_status
#' Add a library.
#' 
#' Add libraries to be installed on a cluster. The installation is asynchronous;
#' it happens in the background after the completion of this request.
#' 
#' **Note**: The actual set of libraries to be installed on a cluster is the
#' union of the libraries specified via this method and the libraries set to be
#' installed on all clusters via the libraries UI.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param cluster_id Required. Unique identifier for the cluster on which to install these libraries.
#' @param libraries Required. The libraries to install.
#'
#'
#' @rdname install_cluster_library
#' @alias librariesInstall
#' @export
install_cluster_library <- function(client, cluster_id, libraries) {
  body <- list(cluster_id = cluster_id, libraries = libraries)
  client$do("POST", "/api/2.0/libraries/install", body = body)
}

#' @rdname install_cluster_library
#' @export 
librariesInstall <- install_cluster_library
#' Uninstall libraries.
#' 
#' Set libraries to be uninstalled on a cluster. The libraries won't be
#' uninstalled until the cluster is restarted. Uninstalling libraries that are
#' not installed on the cluster will have no impact but is not an error.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param cluster_id Required. Unique identifier for the cluster on which to uninstall these libraries.
#' @param libraries Required. The libraries to uninstall.
#'
#'
#' @rdname uninstall_cluster_library
#' @alias librariesUninstall
#' @export
uninstall_cluster_library <- function(client, cluster_id, libraries) {
  body <- list(cluster_id = cluster_id, libraries = libraries)
  client$do("POST", "/api/2.0/libraries/uninstall", body = body)
}

#' @rdname uninstall_cluster_library
#' @export 
librariesUninstall <- uninstall_cluster_library




