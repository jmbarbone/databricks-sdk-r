% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/model_registry.R
\name{create_model_transition_request}
\alias{create_model_transition_request}
\alias{modelRegistryCreateTransitionRequest}
\title{Make a transition request.}
\usage{
create_model_transition_request(client, name, version, stage, comment = NULL)

modelRegistryCreateTransitionRequest(
  client,
  name,
  version,
  stage,
  comment = NULL
)
}
\arguments{
\item{client}{Required. Instance of DatabricksClient()}

\item{name}{Required. Name of the model.}

\item{version}{Required. Version of the model.}

\item{stage}{Required. Target stage of the transition.}

\item{comment}{User-provided comment on the action.}
}
\description{
Creates a model version stage transition request.
}
