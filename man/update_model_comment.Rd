% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/model_registry.R
\name{update_model_comment}
\alias{update_model_comment}
\alias{modelRegistryUpdateComment}
\title{Update a comment.}
\usage{
update_model_comment(client, id, comment)

modelRegistryUpdateComment(client, id, comment)
}
\arguments{
\item{client}{Required. Instance of DatabricksClient()}

\item{id}{Required. Unique identifier of an activity.}

\item{comment}{Required. User-provided comment on the action.}
}
\description{
Post an edit to a comment on a model version.
}
