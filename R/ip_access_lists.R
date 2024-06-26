# Code generated from OpenAPI specs by Databricks SDK Generator. DO NOT EDIT.

#' @importFrom stats runif
NULL

#' Create access list.
#' 
#' Creates an IP access list for this workspace.
#' 
#' A list can be an allow list or a block list. See the top of this file for a
#' description of how the server treats allow lists and block lists at runtime.
#' 
#' When creating or updating an IP access list:
#' 
#' * For all allow lists and block lists combined, the API supports a maximum of
#' 1000 IP/CIDR values, where one CIDR counts as a single value. Attempts to
#' exceed that number return error 400 with `error_code` value `QUOTA_EXCEEDED`.
#' * If the new list would block the calling user's current IP, error 400 is
#' returned with `error_code` value `INVALID_STATE`.
#' 
#' It can take a few minutes for the changes to take effect. **Note**: Your new
#' IP access list has no effect until you enable the feature. See
#' :method:workspaceconf/setStatus
#' @param client Required. Instance of DatabricksClient()
#'
#' @param ip_addresses This field has no description yet.
#' @param label Required. Label for the IP access list.
#' @param list_type Required. Type of IP access list.
#'
#'
#' @rdname create_ip_access_list
#' @alias ipAccessListsCreate
#' @export
create_ip_access_list <- function(client, label, list_type, ip_addresses = NULL) {
  body <- list(ip_addresses = ip_addresses, label = label, list_type = list_type)
  client$do("POST", "/api/2.0/ip-access-lists", body = body)
}

#' @rdname create_ip_access_list
#' @export 
ipAccessListsCreate <- create_ip_access_list
#' Delete access list.
#' 
#' Deletes an IP access list, specified by its list ID.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param ip_access_list_id Required. The ID for the corresponding IP access list.
#'
#'
#' @rdname delete_ip_access_list
#' @alias ipAccessListsDelete
#' @export
delete_ip_access_list <- function(client, ip_access_list_id) {

  client$do("DELETE", paste("/api/2.0/ip-access-lists/", ip_access_list_id, sep = ""))
}

#' @rdname delete_ip_access_list
#' @export 
ipAccessListsDelete <- delete_ip_access_list
#' Get access list.
#' 
#' Gets an IP access list, specified by its list ID.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param ip_access_list_id Required. The ID for the corresponding IP access list.
#'
#'
#' @rdname get_ip_access_list
#' @alias ipAccessListsGet
#' @export
get_ip_access_list <- function(client, ip_access_list_id) {

  client$do("GET", paste("/api/2.0/ip-access-lists/", ip_access_list_id, sep = ""))
}

#' @rdname get_ip_access_list
#' @export 
ipAccessListsGet <- get_ip_access_list
#' Get access lists.
#' 
#' Gets all IP access lists for the specified workspace.
#' @param client Required. Instance of DatabricksClient()
#'
#' @return `data.frame` with all of the response pages.
#'
#'
#' @rdname list_ip_access_lists
#' @alias ipAccessListsList
#' @export
list_ip_access_lists <- function(client) {

  json <- client$do("GET", "/api/2.0/ip-access-lists")
  return(json$ip_access_lists)

}

#' @rdname list_ip_access_lists
#' @export 
ipAccessListsList <- list_ip_access_lists
#' Replace access list.
#' 
#' Replaces an IP access list, specified by its ID.
#' 
#' A list can include allow lists and block lists. See the top of this file for
#' a description of how the server treats allow lists and block lists at run
#' time. When replacing an IP access list: * For all allow lists and block lists
#' combined, the API supports a maximum of 1000 IP/CIDR values, where one CIDR
#' counts as a single value. Attempts to exceed that number return error 400
#' with `error_code` value `QUOTA_EXCEEDED`. * If the resulting list would block
#' the calling user's current IP, error 400 is returned with `error_code` value
#' `INVALID_STATE`. It can take a few minutes for the changes to take effect.
#' Note that your resulting IP access list has no effect until you enable the
#' feature. See :method:workspaceconf/setStatus.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param enabled Required. Specifies whether this IP access list is enabled.
#' @param ip_access_list_id Required. The ID for the corresponding IP access list.
#' @param ip_addresses This field has no description yet.
#' @param label Required. Label for the IP access list.
#' @param list_type Required. Type of IP access list.
#'
#'
#' @rdname replace_ip_access_list
#' @alias ipAccessListsReplace
#' @export
replace_ip_access_list <- function(client, ip_access_list_id, label, list_type, enabled,
  ip_addresses = NULL) {
  body <- list(enabled = enabled, ip_addresses = ip_addresses, label = label, list_type = list_type)
  client$do("PUT", paste("/api/2.0/ip-access-lists/", ip_access_list_id, sep = ""),
    body = body)
}

#' @rdname replace_ip_access_list
#' @export 
ipAccessListsReplace <- replace_ip_access_list
#' Update access list.
#' 
#' Updates an existing IP access list, specified by its ID.
#' 
#' A list can include allow lists and block lists. See the top of this file for
#' a description of how the server treats allow lists and block lists at run
#' time.
#' 
#' When updating an IP access list:
#' 
#' * For all allow lists and block lists combined, the API supports a maximum of
#' 1000 IP/CIDR values, where one CIDR counts as a single value. Attempts to
#' exceed that number return error 400 with `error_code` value `QUOTA_EXCEEDED`.
#' * If the updated list would block the calling user's current IP, error 400 is
#' returned with `error_code` value `INVALID_STATE`.
#' 
#' It can take a few minutes for the changes to take effect. Note that your
#' resulting IP access list has no effect until you enable the feature. See
#' :method:workspaceconf/setStatus.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param enabled Specifies whether this IP access list is enabled.
#' @param ip_access_list_id Required. The ID for the corresponding IP access list.
#' @param ip_addresses This field has no description yet.
#' @param label Label for the IP access list.
#' @param list_type Type of IP access list.
#'
#'
#' @rdname update_ip_access_list
#' @alias ipAccessListsUpdate
#' @export
update_ip_access_list <- function(client, ip_access_list_id, enabled = NULL, ip_addresses = NULL,
  label = NULL, list_type = NULL) {
  body <- list(enabled = enabled, ip_addresses = ip_addresses, label = label, list_type = list_type)
  client$do("PATCH", paste("/api/2.0/ip-access-lists/", ip_access_list_id, sep = ""),
    body = body)
}

#' @rdname update_ip_access_list
#' @export 
ipAccessListsUpdate <- update_ip_access_list






