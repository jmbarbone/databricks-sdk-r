% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/alerts.R
\name{delete_alert}
\alias{delete_alert}
\alias{alertsDelete}
\title{Delete an alert.}
\usage{
delete_alert(client, alert_id)

alertsDelete(client, alert_id)
}
\arguments{
\item{client}{Required. Instance of DatabricksClient()}

\item{alert_id}{Required. This field has no description yet.}
}
\description{
Deletes an alert. Deleted alerts are no longer accessible and cannot be
restored. \strong{Note:} Unlike queries and dashboards, alerts cannot be moved to
the trash.
}
