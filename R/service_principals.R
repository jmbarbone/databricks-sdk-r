# Code generated from OpenAPI specs by Databricks SDK Generator. DO NOT EDIT.

#' @importFrom stats runif
NULL

#' Create a service principal.
#' 
#' Creates a new service principal in the Databricks workspace.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param active If this user is active.
#' @param application_id UUID relating to the service principal.
#' @param display_name String that represents a concatenation of given and family names.
#' @param entitlements Entitlements assigned to the service principal.
#' @param external_id This field has no description yet.
#' @param groups This field has no description yet.
#' @param id Databricks service principal ID.
#' @param roles Corresponds to AWS instance profile/arn role.
#' @param schemas The schema of the List response.
#'
#'
#' @rdname create_service_principal
#' @alias servicePrincipalsCreate
#' @export
create_service_principal <- function(client, active = NULL, application_id = NULL,
  display_name = NULL, entitlements = NULL, external_id = NULL, groups = NULL,
  id = NULL, roles = NULL, schemas = NULL) {
  body <- list(active = active, applicationId = application_id, displayName = display_name,
    entitlements = entitlements, externalId = external_id, groups = groups, id = id,
    roles = roles, schemas = schemas)
  client$do("POST", "/api/2.0/preview/scim/v2/ServicePrincipals", body = body)
}

#' @rdname create_service_principal
#' @export 
servicePrincipalsCreate <- create_service_principal
#' Delete a service principal.
#' 
#' Delete a single service principal in the Databricks workspace.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param id Required. Unique ID for a service principal in the Databricks workspace.
#'
#'
#' @rdname delete_service_principal
#' @alias servicePrincipalsDelete
#' @export
delete_service_principal <- function(client, id) {

  client$do("DELETE", paste("/api/2.0/preview/scim/v2/ServicePrincipals/", id,
    sep = ""))
}

#' @rdname delete_service_principal
#' @export 
servicePrincipalsDelete <- delete_service_principal
#' Get service principal details.
#' 
#' Gets the details for a single service principal define in the Databricks
#' workspace.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param id Required. Unique ID for a service principal in the Databricks workspace.
#'
#'
#' @rdname get_service_principal
#' @alias servicePrincipalsGet
#' @export
get_service_principal <- function(client, id) {

  client$do("GET", paste("/api/2.0/preview/scim/v2/ServicePrincipals/", id, sep = ""))
}

#' @rdname get_service_principal
#' @export 
servicePrincipalsGet <- get_service_principal
#' List service principals.
#' 
#' Gets the set of service principals associated with a Databricks workspace.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param attributes Comma-separated list of attributes to return in response.
#' @param count Desired number of results per page.
#' @param excluded_attributes Comma-separated list of attributes to exclude in response.
#' @param filter Query by which the results have to be filtered.
#' @param sort_by Attribute to sort the results.
#' @param sort_order The order to sort the results.
#' @param start_index Specifies the index of the first result.
#'
#' @return `data.frame` with all of the response pages.
#'
#'
#' @rdname list_service_principals
#' @alias servicePrincipalsList
#' @export
list_service_principals <- function(client, attributes = NULL, count = NULL, excluded_attributes = NULL,
  filter = NULL, sort_by = NULL, sort_order = NULL, start_index = NULL) {
  query <- list(attributes = attributes, count = count, excludedAttributes = excluded_attributes,
    filter = filter, sortBy = sort_by, sortOrder = sort_order, startIndex = start_index)

  query$startIndex = 0
  results <- data.frame()
  while (TRUE) {
    json <- client$do("GET", "/api/2.0/preview/scim/v2/ServicePrincipals", query = query)
    if (is.null(nrow(json$Resources))) {
      break
    }
    # append this page of results to one results data.frame
    results <- dplyr::bind_rows(results, json$Resources)
    query$startIndex <- query$startIndex + nrow(json$Resources)
  }
  # de-duplicate any records via id column
  results <- results[!duplicated(results$id), ]
  return(results)

}

#' @rdname list_service_principals
#' @export 
servicePrincipalsList <- list_service_principals
#' Update service principal details.
#' 
#' Partially updates the details of a single service principal in the Databricks
#' workspace.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param id Required. Unique ID for a service principal in the Databricks workspace.
#' @param operations This field has no description yet.
#' @param schemas The schema of the patch request.
#'
#'
#' @rdname patch_service_principal
#' @alias servicePrincipalsPatch
#' @export
patch_service_principal <- function(client, id, operations = NULL, schemas = NULL) {
  body <- list(Operations = operations, schemas = schemas)
  client$do("PATCH", paste("/api/2.0/preview/scim/v2/ServicePrincipals/", id, sep = ""),
    body = body)
}

#' @rdname patch_service_principal
#' @export 
servicePrincipalsPatch <- patch_service_principal
#' Replace service principal.
#' 
#' Updates the details of a single service principal.
#' 
#' This action replaces the existing service principal with the same name.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param active If this user is active.
#' @param application_id UUID relating to the service principal.
#' @param display_name String that represents a concatenation of given and family names.
#' @param entitlements Entitlements assigned to the service principal.
#' @param external_id This field has no description yet.
#' @param groups This field has no description yet.
#' @param id Databricks service principal ID.
#' @param roles Corresponds to AWS instance profile/arn role.
#' @param schemas The schema of the List response.
#'
#'
#' @rdname update_service_principal
#' @alias servicePrincipalsUpdate
#' @export
update_service_principal <- function(client, id, active = NULL, application_id = NULL,
  display_name = NULL, entitlements = NULL, external_id = NULL, groups = NULL,
  roles = NULL, schemas = NULL) {
  body <- list(active = active, applicationId = application_id, displayName = display_name,
    entitlements = entitlements, externalId = external_id, groups = groups, id = id,
    roles = roles, schemas = schemas)
  client$do("PUT", paste("/api/2.0/preview/scim/v2/ServicePrincipals/", id, sep = ""),
    body = body)
}

#' @rdname update_service_principal
#' @export 
servicePrincipalsUpdate <- update_service_principal






