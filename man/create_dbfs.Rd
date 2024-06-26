% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dbfs.R
\name{create_dbfs}
\alias{create_dbfs}
\alias{dbfsCreate}
\title{Open a stream.}
\usage{
create_dbfs(client, path, overwrite = NULL)

dbfsCreate(client, path, overwrite = NULL)
}
\arguments{
\item{client}{Required. Instance of DatabricksClient()}

\item{path}{Required. The path of the new file.}

\item{overwrite}{The flag that specifies whether to overwrite existing file/files.}
}
\description{
Opens a stream to write to a file and returns a handle to this stream. There
is a 10 minute idle timeout on this handle. If a file or directory already
exists on the given path and \strong{overwrite} is set to false, this call will
throw an exception with \code{RESOURCE_ALREADY_EXISTS}.
}
\details{
A typical workflow for file upload would be:
\enumerate{
\item Issue a \code{create} call and get a handle. 2. Issue one or more
\code{add-block} calls with the handle you have. 3. Issue a \code{close} call with
the handle you have.
}
}
