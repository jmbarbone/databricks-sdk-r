% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/model_registry.R
\name{get_model_latest_versions}
\alias{get_model_latest_versions}
\alias{modelRegistryGetLatestVersions}
\title{Get the latest version.}
\usage{
get_model_latest_versions(client, name, stages = NULL)

modelRegistryGetLatestVersions(client, name, stages = NULL)
}
\arguments{
\item{client}{Required. Instance of DatabricksClient()}

\item{name}{Required. Registered model unique name identifier.}

\item{stages}{List of stages.}
}
\value{
\code{data.frame} with all of the response pages.
}
\description{
Gets the latest version of a registered model.
}
