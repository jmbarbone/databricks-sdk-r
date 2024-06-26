# Code generated from OpenAPI specs by Databricks SDK Generator. DO NOT EDIT.

#' @importFrom stats runif
NULL

#' Create a table constraint.
#' 
#' Creates a new table constraint.
#' 
#' For the table constraint creation to succeed, the user must satisfy both of
#' these conditions: - the user must have the **USE_CATALOG** privilege on the
#' table's parent catalog, the **USE_SCHEMA** privilege on the table's parent
#' schema, and be the owner of the table. - if the new constraint is a
#' __ForeignKeyConstraint__, the user must have the **USE_CATALOG** privilege on
#' the referenced parent table's catalog, the **USE_SCHEMA** privilege on the
#' referenced parent table's schema, and be the owner of the referenced parent
#' table.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param constraint Required. A table constraint, as defined by *one* of the following fields being set: __primary_key_constraint__, __foreign_key_constraint__, __named_table_constraint__.
#' @param full_name_arg Required. The full name of the table referenced by the constraint.
#'
#'
#' @rdname create_table_constraint
#' @alias tableConstraintsCreate
#' @export
create_table_constraint <- function(client, full_name_arg, constraint) {
  body <- list(constraint = constraint, full_name_arg = full_name_arg)
  client$do("POST", "/api/2.1/unity-catalog/constraints", body = body)
}

#' @rdname create_table_constraint
#' @export 
tableConstraintsCreate <- create_table_constraint
#' Delete a table constraint.
#' 
#' Deletes a table constraint.
#' 
#' For the table constraint deletion to succeed, the user must satisfy both of
#' these conditions: - the user must have the **USE_CATALOG** privilege on the
#' table's parent catalog, the **USE_SCHEMA** privilege on the table's parent
#' schema, and be the owner of the table. - if __cascade__ argument is **true**,
#' the user must have the following permissions on all of the child tables: the
#' **USE_CATALOG** privilege on the table's catalog, the **USE_SCHEMA**
#' privilege on the table's schema, and be the owner of the table.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param cascade Required. If true, try deleting all child constraints of the current constraint.
#' @param constraint_name Required. The name of the constraint to delete.
#' @param full_name Required. Full name of the table referenced by the constraint.
#'
#'
#' @rdname delete_table_constraint
#' @alias tableConstraintsDelete
#' @export
delete_table_constraint <- function(client, full_name, constraint_name, cascade) {
  query <- list(cascade = cascade, constraint_name = constraint_name)
  client$do("DELETE", paste("/api/2.1/unity-catalog/constraints/", full_name, sep = ""),
    query = query)
}

#' @rdname delete_table_constraint
#' @export 
tableConstraintsDelete <- delete_table_constraint


