# Code generated from OpenAPI specs by Databricks SDK Generator. DO NOT EDIT.

#' @importFrom stats runif
NULL

#' Get current user info.
#' 
#' Get details about the current method caller's identity.
#' @param client Required. Instance of DatabricksClient()
#'
#'
#' @rdname me
#' @alias currentUserMe
#' @export
me <- function(client) {
  client$do("GET", "/api/2.0/preview/scim/v2/Me")
}

#' @rdname me
#' @export 
currentUserMe <- me

