% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/artifact_allowlists.R
\name{update_artifact_allowlist}
\alias{update_artifact_allowlist}
\alias{artifactAllowlistsUpdate}
\title{Set an artifact allowlist.}
\usage{
update_artifact_allowlist(client, artifact_type, artifact_matchers)

artifactAllowlistsUpdate(client, artifact_type, artifact_matchers)
}
\arguments{
\item{client}{Required. Instance of DatabricksClient()}

\item{artifact_type}{Required. The artifact type of the allowlist.}

\item{artifact_matchers}{Required. A list of allowed artifact match patterns.}
}
\description{
Set the artifact allowlist of a certain artifact type. The whole artifact
allowlist is replaced with the new allowlist. The caller must be a metastore
admin or have the \strong{MANAGE ALLOWLIST} privilege on the metastore.
}
