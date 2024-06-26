% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/volumes.R
\name{read_volume}
\alias{read_volume}
\alias{volumesRead}
\title{Get a Volume.}
\usage{
read_volume(client, name, include_browse = NULL)

volumesRead(client, name, include_browse = NULL)
}
\arguments{
\item{client}{Required. Instance of DatabricksClient()}

\item{name}{Required. The three-level (fully qualified) name of the volume.}

\item{include_browse}{Whether to include volumes in the response for which the principal can only access selective metadata for.}
}
\description{
Gets a volume from the metastore for a specific catalog and schema.
}
\details{
The caller must be a metastore admin or an owner of (or have the \strong{READ
VOLUME} privilege on) the volume. For the latter case, the caller must also
be the owner or have the \strong{USE_CATALOG} privilege on the parent catalog and
the \strong{USE_SCHEMA} privilege on the parent schema.
}
