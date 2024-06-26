% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/statement_execution.R
\name{cancel_statement_execution}
\alias{cancel_statement_execution}
\alias{statementExecutionCancelExecution}
\title{Cancel statement execution.}
\usage{
cancel_statement_execution(client, statement_id)

statementExecutionCancelExecution(client, statement_id)
}
\arguments{
\item{client}{Required. Instance of DatabricksClient()}

\item{statement_id}{Required. The statement ID is returned upon successfully submitting a SQL statement, and is a required reference for all subsequent calls.}
}
\description{
Requests that an executing statement be canceled. Callers must poll for
status to see the terminal state.
}
