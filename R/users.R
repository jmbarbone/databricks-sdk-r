# Code generated from OpenAPI specs by Databricks SDK Generator. DO NOT EDIT.

#' @importFrom stats runif
NULL

#' Create a new user.
#' 
#' Creates a new user in the Databricks workspace. This new user will also be
#' added to the Databricks account.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param active If this user is active.
#' @param display_name String that represents a concatenation of given and family names.
#' @param emails All the emails associated with the Databricks user.
#' @param entitlements Entitlements assigned to the user.
#' @param external_id External ID is not currently supported.
#' @param groups This field has no description yet.
#' @param id Databricks user ID.
#' @param name This field has no description yet.
#' @param roles Corresponds to AWS instance profile/arn role.
#' @param schemas The schema of the user.
#' @param user_name Email address of the Databricks user.
#'
#'
#' @rdname create_user
#' @alias usersCreate
#' @export
create_user <- function(client, active = NULL, display_name = NULL, emails = NULL,
  entitlements = NULL, external_id = NULL, groups = NULL, id = NULL, name = NULL,
  roles = NULL, schemas = NULL, user_name = NULL) {
  body <- list(active = active, displayName = display_name, emails = emails, entitlements = entitlements,
    externalId = external_id, groups = groups, id = id, name = name, roles = roles,
    schemas = schemas, userName = user_name)
  client$do("POST", "/api/2.0/preview/scim/v2/Users", body = body)
}

#' @rdname create_user
#' @export 
usersCreate <- create_user
#' Delete a user.
#' 
#' Deletes a user. Deleting a user from a Databricks workspace also removes
#' objects associated with the user.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param id Required. Unique ID for a user in the Databricks workspace.
#'
#'
#' @rdname delete_user
#' @alias usersDelete
#' @export
delete_user <- function(client, id) {

  client$do("DELETE", paste("/api/2.0/preview/scim/v2/Users/", id, sep = ""))
}

#' @rdname delete_user
#' @export 
usersDelete <- delete_user
#' Get user details.
#' 
#' Gets information for a specific user in Databricks workspace.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param attributes Comma-separated list of attributes to return in response.
#' @param count Desired number of results per page.
#' @param excluded_attributes Comma-separated list of attributes to exclude in response.
#' @param filter Query by which the results have to be filtered.
#' @param id Required. Unique ID for a user in the Databricks workspace.
#' @param sort_by Attribute to sort the results.
#' @param sort_order The order to sort the results.
#' @param start_index Specifies the index of the first result.
#'
#'
#' @rdname get_user
#' @alias usersGet
#' @export
get_user <- function(client, id, attributes = NULL, count = NULL, excluded_attributes = NULL,
  filter = NULL, sort_by = NULL, sort_order = NULL, start_index = NULL) {
  query <- list(attributes = attributes, count = count, excludedAttributes = excluded_attributes,
    filter = filter, sortBy = sort_by, sortOrder = sort_order, startIndex = start_index)
  client$do("GET", paste("/api/2.0/preview/scim/v2/Users/", id, sep = ""), query = query)
}

#' @rdname get_user
#' @export 
usersGet <- get_user
#' Get password permission levels.
#' 
#' Gets the permission levels that a user can have on an object.
#' @param client Required. Instance of DatabricksClient()
#'
#'
#' @rdname get_user_permission_levels
#' @alias usersGetPermissionLevels
#' @export
get_user_permission_levels <- function(client) {
  client$do("GET", "/api/2.0/permissions/authorization/passwords/permissionLevels")
}

#' @rdname get_user_permission_levels
#' @export 
usersGetPermissionLevels <- get_user_permission_levels
#' Get password permissions.
#' 
#' Gets the permissions of all passwords. Passwords can inherit permissions from
#' their root object.
#' @param client Required. Instance of DatabricksClient()
#'
#'
#' @rdname get_user_permissions
#' @alias usersGetPermissions
#' @export
get_user_permissions <- function(client) {
  client$do("GET", "/api/2.0/permissions/authorization/passwords")
}

#' @rdname get_user_permissions
#' @export 
usersGetPermissions <- get_user_permissions
#' List users.
#' 
#' Gets details for all the users associated with a Databricks workspace.
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
#' @rdname list_users
#' @alias usersList
#' @export
list_users <- function(client, attributes = NULL, count = NULL, excluded_attributes = NULL,
  filter = NULL, sort_by = NULL, sort_order = NULL, start_index = NULL) {
  query <- list(attributes = attributes, count = count, excludedAttributes = excluded_attributes,
    filter = filter, sortBy = sort_by, sortOrder = sort_order, startIndex = start_index)

  query$startIndex = 0
  results <- data.frame()
  while (TRUE) {
    json <- client$do("GET", "/api/2.0/preview/scim/v2/Users", query = query)
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

#' @rdname list_users
#' @export 
usersList <- list_users
#' Update user details.
#' 
#' Partially updates a user resource by applying the supplied operations on
#' specific user attributes.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param id Required. Unique ID for a user in the Databricks workspace.
#' @param operations This field has no description yet.
#' @param schemas The schema of the patch request.
#'
#'
#' @rdname patch_user
#' @alias usersPatch
#' @export
patch_user <- function(client, id, operations = NULL, schemas = NULL) {
  body <- list(Operations = operations, schemas = schemas)
  client$do("PATCH", paste("/api/2.0/preview/scim/v2/Users/", id, sep = ""), body = body)
}

#' @rdname patch_user
#' @export 
usersPatch <- patch_user
#' Set password permissions.
#' 
#' Sets permissions on all passwords. Passwords can inherit permissions from
#' their root object.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param access_control_list This field has no description yet.
#'
#'
#' @rdname set_user_permissions
#' @alias usersSetPermissions
#' @export
set_user_permissions <- function(client, access_control_list = NULL) {
  body <- list(access_control_list = access_control_list)
  client$do("PUT", "/api/2.0/permissions/authorization/passwords", body = body)
}

#' @rdname set_user_permissions
#' @export 
usersSetPermissions <- set_user_permissions
#' Replace a user.
#' 
#' Replaces a user's information with the data supplied in request.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param active If this user is active.
#' @param display_name String that represents a concatenation of given and family names.
#' @param emails All the emails associated with the Databricks user.
#' @param entitlements Entitlements assigned to the user.
#' @param external_id External ID is not currently supported.
#' @param groups This field has no description yet.
#' @param id Databricks user ID.
#' @param name This field has no description yet.
#' @param roles Corresponds to AWS instance profile/arn role.
#' @param schemas The schema of the user.
#' @param user_name Email address of the Databricks user.
#'
#'
#' @rdname update_user
#' @alias usersUpdate
#' @export
update_user <- function(client, id, active = NULL, display_name = NULL, emails = NULL,
  entitlements = NULL, external_id = NULL, groups = NULL, name = NULL, roles = NULL,
  schemas = NULL, user_name = NULL) {
  body <- list(active = active, displayName = display_name, emails = emails, entitlements = entitlements,
    externalId = external_id, groups = groups, id = id, name = name, roles = roles,
    schemas = schemas, userName = user_name)
  client$do("PUT", paste("/api/2.0/preview/scim/v2/Users/", id, sep = ""), body = body)
}

#' @rdname update_user
#' @export 
usersUpdate <- update_user
#' Update password permissions.
#' 
#' Updates the permissions on all passwords. Passwords can inherit permissions
#' from their root object.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param access_control_list This field has no description yet.
#'
#'
#' @rdname update_user_permissions
#' @alias usersUpdatePermissions
#' @export
update_user_permissions <- function(client, access_control_list = NULL) {
  body <- list(access_control_list = access_control_list)
  client$do("PATCH", "/api/2.0/permissions/authorization/passwords", body = body)
}

#' @rdname update_user_permissions
#' @export 
usersUpdatePermissions <- update_user_permissions










