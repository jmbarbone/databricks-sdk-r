% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/files.R
\name{download_file}
\alias{download_file}
\alias{filesDownload}
\title{Download a file.}
\usage{
download_file(client, file_path)

filesDownload(client, file_path)
}
\arguments{
\item{client}{Required. Instance of DatabricksClient()}

\item{file_path}{Required. The absolute path of the file.}
}
\description{
Downloads a file of up to 5 GiB. The file contents are the response body.
This is a standard HTTP file download, not a JSON RPC.
}
