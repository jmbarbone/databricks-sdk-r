# Code generated from OpenAPI specs by Databricks SDK Generator. DO NOT EDIT.

#' @importFrom stats runif
NULL

#' Create a new query definition.
#' 
#' Creates a new query definition. Queries created with this endpoint belong to
#' the authenticated user making the request.
#' 
#' The `data_source_id` field specifies the ID of the SQL warehouse to run this
#' query against. You can use the Data Sources API to see a complete list of
#' available SQL warehouses. Or you can copy the `data_source_id` from an
#' existing query.
#' 
#' **Note**: You cannot add a visualization until you create the query.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param data_source_id Data source ID maps to the ID of the data source used by the resource and is distinct from the warehouse ID.
#' @param description General description that conveys additional information about this query such as usage notes.
#' @param name The title of this query that appears in list views, widget headings, and on the query page.
#' @param options Exclusively used for storing a list parameter definitions.
#' @param parent The identifier of the workspace folder containing the object.
#' @param query The text of the query to be run.
#' @param run_as_role Sets the **Run as** role for the object.
#'
#'
#' @rdname create_query
#' @alias queriesCreate
#' @export
create_query <- function(client, data_source_id = NULL, description = NULL, name = NULL,
  options = NULL, parent = NULL, query = NULL, run_as_role = NULL) {
  body <- list(data_source_id = data_source_id, description = description, name = name,
    options = options, parent = parent, query = query, run_as_role = run_as_role)
  client$do("POST", "/api/2.0/preview/sql/queries", body = body)
}

#' @rdname create_query
#' @export 
queriesCreate <- create_query
#' Delete a query.
#' 
#' Moves a query to the trash. Trashed queries immediately disappear from
#' searches and list views, and they cannot be used for alerts. The trash is
#' deleted after 30 days.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param query_id Required. This field has no description yet.
#'
#'
#' @rdname delete_query
#' @alias queriesDelete
#' @export
delete_query <- function(client, query_id) {

  client$do("DELETE", paste("/api/2.0/preview/sql/queries/", query_id, sep = ""))
}

#' @rdname delete_query
#' @export 
queriesDelete <- delete_query
#' Get a query definition.
#' 
#' Retrieve a query object definition along with contextual permissions
#' information about the currently authenticated user.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param query_id Required. This field has no description yet.
#'
#'
#' @rdname get_query
#' @alias queriesGet
#' @export
get_query <- function(client, query_id) {

  client$do("GET", paste("/api/2.0/preview/sql/queries/", query_id, sep = ""))
}

#' @rdname get_query
#' @export 
queriesGet <- get_query
#' Get a list of queries.
#' 
#' Gets a list of queries. Optionally, this list can be filtered by a search
#' term.
#' 
#' ### **Warning: Calling this API concurrently 10 or more times could result in
#' throttling, service degradation, or a temporary ban.**
#' @param client Required. Instance of DatabricksClient()
#'
#' @param order Name of query attribute to order by.
#' @param page Page number to retrieve.
#' @param page_size Number of queries to return per page.
#' @param q Full text search term.
#'
#' @return `data.frame` with all of the response pages.
#'
#'
#' @rdname list_queries
#' @alias queriesList
#' @export
list_queries <- function(client, order = NULL, page = NULL, page_size = NULL, q = NULL) {
  query <- list(order = order, page = page, page_size = page_size, q = q)

  query$page = 1
  results <- data.frame()
  while (TRUE) {
    json <- client$do("GET", "/api/2.0/preview/sql/queries", query = query)
    if (is.null(nrow(json$results))) {
      break
    }
    # append this page of results to one results data.frame
    results <- dplyr::bind_rows(results, json$results)
    query$page <- query$page + 1
  }
  # de-duplicate any records via id column
  results <- results[!duplicated(results$id), ]
  return(results)

}

#' @rdname list_queries
#' @export 
queriesList <- list_queries
#' Restore a query.
#' 
#' Restore a query that has been moved to the trash. A restored query appears in
#' list views and searches. You can use restored queries for alerts.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param query_id Required. This field has no description yet.
#'
#'
#' @rdname restore_query
#' @alias queriesRestore
#' @export
restore_query <- function(client, query_id) {

  client$do("POST", paste("/api/2.0/preview/sql/queries/trash/", query_id, sep = ""))
}

#' @rdname restore_query
#' @export 
queriesRestore <- restore_query
#' Change a query definition.
#' 
#' Modify this query definition.
#' 
#' **Note**: You cannot undo this operation.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param data_source_id Data source ID maps to the ID of the data source used by the resource and is distinct from the warehouse ID.
#' @param description General description that conveys additional information about this query such as usage notes.
#' @param name The title of this query that appears in list views, widget headings, and on the query page.
#' @param options Exclusively used for storing a list parameter definitions.
#' @param query The text of the query to be run.
#' @param query_id Required. This field has no description yet.
#' @param run_as_role Sets the **Run as** role for the object.
#'
#'
#' @rdname update_query
#' @alias queriesUpdate
#' @export
update_query <- function(client, query_id, data_source_id = NULL, description = NULL,
  name = NULL, options = NULL, query = NULL, run_as_role = NULL) {
  body <- list(data_source_id = data_source_id, description = description, name = name,
    options = options, query = query, run_as_role = run_as_role)
  client$do("POST", paste("/api/2.0/preview/sql/queries/", query_id, sep = ""),
    body = body)
}

#' @rdname update_query
#' @export 
queriesUpdate <- update_query






