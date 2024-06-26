% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/table_constraints.R
\name{delete_table_constraint}
\alias{delete_table_constraint}
\alias{tableConstraintsDelete}
\title{Delete a table constraint.}
\usage{
delete_table_constraint(client, full_name, constraint_name, cascade)

tableConstraintsDelete(client, full_name, constraint_name, cascade)
}
\arguments{
\item{client}{Required. Instance of DatabricksClient()}

\item{full_name}{Required. Full name of the table referenced by the constraint.}

\item{constraint_name}{Required. The name of the constraint to delete.}

\item{cascade}{Required. If true, try deleting all child constraints of the current constraint.}
}
\description{
Deletes a table constraint.
}
\details{
For the table constraint deletion to succeed, the user must satisfy both of
these conditions: - the user must have the \strong{USE_CATALOG} privilege on the
table's parent catalog, the \strong{USE_SCHEMA} privilege on the table's parent
schema, and be the owner of the table. - if \strong{cascade} argument is \strong{true},
the user must have the following permissions on all of the child tables: the
\strong{USE_CATALOG} privilege on the table's catalog, the \strong{USE_SCHEMA}
privilege on the table's schema, and be the owner of the table.
}
