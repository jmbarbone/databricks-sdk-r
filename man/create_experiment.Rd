% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/experiments.R
\name{create_experiment}
\alias{create_experiment}
\alias{experimentsCreateExperiment}
\title{Create experiment.}
\usage{
create_experiment(client, name, artifact_location = NULL, tags = NULL)

experimentsCreateExperiment(
  client,
  name,
  artifact_location = NULL,
  tags = NULL
)
}
\arguments{
\item{client}{Required. Instance of DatabricksClient()}

\item{name}{Required. Experiment name.}

\item{artifact_location}{Location where all artifacts for the experiment are stored.}

\item{tags}{A collection of tags to set on the experiment.}
}
\description{
Creates an experiment with a name. Returns the ID of the newly created
experiment. Validates that another experiment with the same name does not
already exist and fails if another experiment with the same name already
exists.
}
\details{
Throws \code{RESOURCE_ALREADY_EXISTS} if a experiment with the given name exists.
}
