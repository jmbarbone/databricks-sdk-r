# Code generated from OpenAPI specs by Databricks SDK Generator. DO NOT EDIT.

#' @importFrom stats runif
NULL

#' Create experiment.
#' 
#' Creates an experiment with a name. Returns the ID of the newly created
#' experiment. Validates that another experiment with the same name does not
#' already exist and fails if another experiment with the same name already
#' exists.
#' 
#' Throws `RESOURCE_ALREADY_EXISTS` if a experiment with the given name exists.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param artifact_location Location where all artifacts for the experiment are stored.
#' @param name Required. Experiment name.
#' @param tags A collection of tags to set on the experiment.
#'
#'
#' @rdname create_experiment
#' @alias experimentsCreateExperiment
#' @export
create_experiment <- function(client, name, artifact_location = NULL, tags = NULL) {
  body <- list(artifact_location = artifact_location, name = name, tags = tags)
  client$do("POST", "/api/2.0/mlflow/experiments/create", body = body)
}

#' @rdname create_experiment
#' @export 
experimentsCreateExperiment <- create_experiment
#' Create a run.
#' 
#' Creates a new run within an experiment. A run is usually a single execution
#' of a machine learning or data ETL pipeline. MLflow uses runs to track the
#' `mlflowParam`, `mlflowMetric` and `mlflowRunTag` associated with a single
#' execution.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param experiment_id ID of the associated experiment.
#' @param start_time Unix timestamp in milliseconds of when the run started.
#' @param tags Additional metadata for run.
#' @param user_id ID of the user executing the run.
#'
#'
#' @rdname create_experiment_run
#' @alias experimentsCreateRun
#' @export
create_experiment_run <- function(client, experiment_id = NULL, start_time = NULL,
  tags = NULL, user_id = NULL) {
  body <- list(experiment_id = experiment_id, start_time = start_time, tags = tags,
    user_id = user_id)
  client$do("POST", "/api/2.0/mlflow/runs/create", body = body)
}

#' @rdname create_experiment_run
#' @export 
experimentsCreateRun <- create_experiment_run
#' Delete an experiment.
#' 
#' Marks an experiment and associated metadata, runs, metrics, params, and tags
#' for deletion. If the experiment uses FileStore, artifacts associated with
#' experiment are also deleted.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param experiment_id Required. ID of the associated experiment.
#'
#'
#' @rdname delete_experiment
#' @alias experimentsDeleteExperiment
#' @export
delete_experiment <- function(client, experiment_id) {
  body <- list(experiment_id = experiment_id)
  client$do("POST", "/api/2.0/mlflow/experiments/delete", body = body)
}

#' @rdname delete_experiment
#' @export 
experimentsDeleteExperiment <- delete_experiment
#' Delete a run.
#' 
#' Marks a run for deletion.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param run_id Required. ID of the run to delete.
#'
#'
#' @rdname delete_experiment_run
#' @alias experimentsDeleteRun
#' @export
delete_experiment_run <- function(client, run_id) {
  body <- list(run_id = run_id)
  client$do("POST", "/api/2.0/mlflow/runs/delete", body = body)
}

#' @rdname delete_experiment_run
#' @export 
experimentsDeleteRun <- delete_experiment_run
#' Delete runs by creation time.
#' 
#' Bulk delete runs in an experiment that were created prior to or at the
#' specified timestamp. Deletes at most max_runs per request. To call this API
#' from a Databricks Notebook in Python, you can use the client code snippet on
#' https://learn.microsoft.com/en-us/azure/databricks/mlflow/runs#bulk-delete.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param experiment_id Required. The ID of the experiment containing the runs to delete.
#' @param max_runs An optional positive integer indicating the maximum number of runs to delete.
#' @param max_timestamp_millis Required. The maximum creation timestamp in milliseconds since the UNIX epoch for deleting runs.
#'
#'
#' @rdname delete_experiment_runs
#' @alias experimentsDeleteRuns
#' @export
delete_experiment_runs <- function(client, experiment_id, max_timestamp_millis, max_runs = NULL) {
  body <- list(experiment_id = experiment_id, max_runs = max_runs, max_timestamp_millis = max_timestamp_millis)
  client$do("POST", "/api/2.0/mlflow/databricks/runs/delete-runs", body = body)
}

#' @rdname delete_experiment_runs
#' @export 
experimentsDeleteRuns <- delete_experiment_runs
#' Delete a tag.
#' 
#' Deletes a tag on a run. Tags are run metadata that can be updated during a
#' run and after a run completes.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param key Required. Name of the tag.
#' @param run_id Required. ID of the run that the tag was logged under.
#'
#'
#' @rdname delete_experiment_tag
#' @alias experimentsDeleteTag
#' @export
delete_experiment_tag <- function(client, run_id, key) {
  body <- list(key = key, run_id = run_id)
  client$do("POST", "/api/2.0/mlflow/runs/delete-tag", body = body)
}

#' @rdname delete_experiment_tag
#' @export 
experimentsDeleteTag <- delete_experiment_tag
#' Get metadata.
#' 
#' Gets metadata for an experiment.
#' 
#' This endpoint will return deleted experiments, but prefers the active
#' experiment if an active and deleted experiment share the same name. If
#' multiple deleted experiments share the same name, the API will return one of
#' them.
#' 
#' Throws `RESOURCE_DOES_NOT_EXIST` if no experiment with the specified name
#' exists.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param experiment_name Required. Name of the associated experiment.
#'
#'
#' @rdname get_experiment_by_name
#' @alias experimentsGetByName
#' @export
get_experiment_by_name <- function(client, experiment_name) {
  query <- list(experiment_name = experiment_name)
  client$do("GET", "/api/2.0/mlflow/experiments/get-by-name", query = query)
}

#' @rdname get_experiment_by_name
#' @export 
experimentsGetByName <- get_experiment_by_name
#' Get an experiment.
#' 
#' Gets metadata for an experiment. This method works on deleted experiments.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param experiment_id Required. ID of the associated experiment.
#'
#'
#' @rdname get_experiment
#' @alias experimentsGetExperiment
#' @export
get_experiment <- function(client, experiment_id) {
  query <- list(experiment_id = experiment_id)
  client$do("GET", "/api/2.0/mlflow/experiments/get", query = query)
}

#' @rdname get_experiment
#' @export 
experimentsGetExperiment <- get_experiment
#' Get history of a given metric within a run.
#' 
#' Gets a list of all values for the specified metric for a given run.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param max_results Maximum number of Metric records to return per paginated request.
#' @param metric_key Required. Name of the metric.
#' @param page_token Token indicating the page of metric histories to fetch.
#' @param run_id ID of the run from which to fetch metric values.
#' @param run_uuid Deprecated, use run_id instead. ID of the run from which to fetch metric values.
#'
#' @return `data.frame` with all of the response pages.
#'
#'
#' @rdname get_experiment_history
#' @alias experimentsGetHistory
#' @export
get_experiment_history <- function(client, metric_key, max_results = NULL, page_token = NULL,
  run_id = NULL, run_uuid = NULL) {
  query <- list(max_results = max_results, metric_key = metric_key, page_token = page_token,
    run_id = run_id, run_uuid = run_uuid)

  results <- data.frame()
  while (TRUE) {
    json <- client$do("GET", "/api/2.0/mlflow/metrics/get-history", query = query)
    if (is.null(nrow(json$metrics))) {
      break
    }
    # append this page of results to one results data.frame
    results <- dplyr::bind_rows(results, json$metrics)
    if (is.null(json$next_page_token)) {
      break
    }
    query$page_token <- json$next_page_token
  }
  return(results)

}

#' @rdname get_experiment_history
#' @export 
experimentsGetHistory <- get_experiment_history
#' Get experiment permission levels.
#' 
#' Gets the permission levels that a user can have on an object.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param experiment_id Required. The experiment for which to get or manage permissions.
#'
#'
#' @rdname get_experiment_permission_levels
#' @alias experimentsGetPermissionLevels
#' @export
get_experiment_permission_levels <- function(client, experiment_id) {

  client$do("GET", paste("/api/2.0/permissions/experiments/", experiment_id, "/permissionLevels",
    , sep = ""))
}

#' @rdname get_experiment_permission_levels
#' @export 
experimentsGetPermissionLevels <- get_experiment_permission_levels
#' Get experiment permissions.
#' 
#' Gets the permissions of an experiment. Experiments can inherit permissions
#' from their root object.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param experiment_id Required. The experiment for which to get or manage permissions.
#'
#'
#' @rdname get_experiment_permissions
#' @alias experimentsGetPermissions
#' @export
get_experiment_permissions <- function(client, experiment_id) {

  client$do("GET", paste("/api/2.0/permissions/experiments/", experiment_id, sep = ""))
}

#' @rdname get_experiment_permissions
#' @export 
experimentsGetPermissions <- get_experiment_permissions
#' Get a run.
#' 
#' Gets the metadata, metrics, params, and tags for a run. In the case where
#' multiple metrics with the same key are logged for a run, return only the
#' value with the latest timestamp.
#' 
#' If there are multiple values with the latest timestamp, return the maximum of
#' these values.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param run_id Required. ID of the run to fetch.
#' @param run_uuid Deprecated, use run_id instead. ID of the run to fetch.
#'
#'
#' @rdname get_experiment_run
#' @alias experimentsGetRun
#' @export
get_experiment_run <- function(client, run_id, run_uuid = NULL) {
  query <- list(run_id = run_id, run_uuid = run_uuid)
  client$do("GET", "/api/2.0/mlflow/runs/get", query = query)
}

#' @rdname get_experiment_run
#' @export 
experimentsGetRun <- get_experiment_run
#' Get all artifacts.
#' 
#' List artifacts for a run. Takes an optional `artifact_path` prefix. If it is
#' specified, the response contains only artifacts with the specified prefix.',
#' @param client Required. Instance of DatabricksClient()
#'
#' @param page_token Token indicating the page of artifact results to fetch.
#' @param path Filter artifacts matching this path (a relative path from the root artifact directory).
#' @param run_id ID of the run whose artifacts to list.
#' @param run_uuid Deprecated, use run_id instead. ID of the run whose artifacts to list.
#'
#' @return `data.frame` with all of the response pages.
#'
#'
#' @rdname list_experiment_artifacts
#' @alias experimentsListArtifacts
#' @export
list_experiment_artifacts <- function(client, page_token = NULL, path = NULL, run_id = NULL,
  run_uuid = NULL) {
  query <- list(page_token = page_token, path = path, run_id = run_id, run_uuid = run_uuid)

  results <- data.frame()
  while (TRUE) {
    json <- client$do("GET", "/api/2.0/mlflow/artifacts/list", query = query)
    if (is.null(nrow(json$files))) {
      break
    }
    # append this page of results to one results data.frame
    results <- dplyr::bind_rows(results, json$files)
    if (is.null(json$next_page_token)) {
      break
    }
    query$page_token <- json$next_page_token
  }
  return(results)

}

#' @rdname list_experiment_artifacts
#' @export 
experimentsListArtifacts <- list_experiment_artifacts
#' List experiments.
#' 
#' Gets a list of all experiments.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param max_results Maximum number of experiments desired.
#' @param page_token Token indicating the page of experiments to fetch.
#' @param view_type Qualifier for type of experiments to be returned.
#'
#' @return `data.frame` with all of the response pages.
#'
#'
#' @rdname list_experiment_experiments
#' @alias experimentsListExperiments
#' @export
list_experiment_experiments <- function(client, max_results = NULL, page_token = NULL,
  view_type = NULL) {
  query <- list(max_results = max_results, page_token = page_token, view_type = view_type)

  results <- data.frame()
  while (TRUE) {
    json <- client$do("GET", "/api/2.0/mlflow/experiments/list", query = query)
    if (is.null(nrow(json$experiments))) {
      break
    }
    # append this page of results to one results data.frame
    results <- dplyr::bind_rows(results, json$experiments)
    if (is.null(json$next_page_token)) {
      break
    }
    query$page_token <- json$next_page_token
  }
  return(results)

}

#' @rdname list_experiment_experiments
#' @export 
experimentsListExperiments <- list_experiment_experiments
#' Log a batch.
#' 
#' Logs a batch of metrics, params, and tags for a run. If any data failed to be
#' persisted, the server will respond with an error (non-200 status code).
#' 
#' In case of error (due to internal server error or an invalid request),
#' partial data may be written.
#' 
#' You can write metrics, params, and tags in interleaving fashion, but within a
#' given entity type are guaranteed to follow the order specified in the request
#' body.
#' 
#' The overwrite behavior for metrics, params, and tags is as follows:
#' 
#' * Metrics: metric values are never overwritten. Logging a metric (key, value,
#' timestamp) appends to the set of values for the metric with the provided key.
#' 
#' * Tags: tag values can be overwritten by successive writes to the same tag
#' key. That is, if multiple tag values with the same key are provided in the
#' same API request, the last-provided tag value is written. Logging the same
#' tag (key, value) is permitted. Specifically, logging a tag is idempotent.
#' 
#' * Parameters: once written, param values cannot be changed (attempting to
#' overwrite a param value will result in an error). However, logging the same
#' param (key, value) is permitted. Specifically, logging a param is idempotent.
#' 
#' Request Limits ------------------------------- A single JSON-serialized API
#' request may be up to 1 MB in size and contain:
#' 
#' * No more than 1000 metrics, params, and tags in total * Up to 1000 metrics *
#' Up to 100 params * Up to 100 tags
#' 
#' For example, a valid request might contain 900 metrics, 50 params, and 50
#' tags, but logging 900 metrics, 50 params, and 51 tags is invalid.
#' 
#' The following limits also apply to metric, param, and tag keys and values:
#' 
#' * Metric keys, param keys, and tag keys can be up to 250 characters in length
#' * Parameter and tag values can be up to 250 characters in length
#' @param client Required. Instance of DatabricksClient()
#'
#' @param metrics Metrics to log.
#' @param params Params to log.
#' @param run_id ID of the run to log under.
#' @param tags Tags to log.
#'
#'
#' @rdname log_experiment_batch
#' @alias experimentsLogBatch
#' @export
log_experiment_batch <- function(client, metrics = NULL, params = NULL, run_id = NULL,
  tags = NULL) {
  body <- list(metrics = metrics, params = params, run_id = run_id, tags = tags)
  client$do("POST", "/api/2.0/mlflow/runs/log-batch", body = body)
}

#' @rdname log_experiment_batch
#' @export 
experimentsLogBatch <- log_experiment_batch
#' Log inputs to a run.
#' 
#' **NOTE:** Experimental: This API may change or be removed in a future release
#' without warning.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param datasets Dataset inputs.
#' @param run_id ID of the run to log under.
#'
#'
#' @rdname log_experiment_inputs
#' @alias experimentsLogInputs
#' @export
log_experiment_inputs <- function(client, datasets = NULL, run_id = NULL) {
  body <- list(datasets = datasets, run_id = run_id)
  client$do("POST", "/api/2.0/mlflow/runs/log-inputs", body = body)
}

#' @rdname log_experiment_inputs
#' @export 
experimentsLogInputs <- log_experiment_inputs
#' Log a metric.
#' 
#' Logs a metric for a run. A metric is a key-value pair (string key, float
#' value) with an associated timestamp. Examples include the various metrics
#' that represent ML model accuracy. A metric can be logged multiple times.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param key Required. Name of the metric.
#' @param run_id ID of the run under which to log the metric.
#' @param run_uuid Deprecated, use run_id instead. ID of the run under which to log the metric.
#' @param step Step at which to log the metric.
#' @param timestamp Required. Unix timestamp in milliseconds at the time metric was logged.
#' @param value Required. Double value of the metric being logged.
#'
#'
#' @rdname log_experiment_metric
#' @alias experimentsLogMetric
#' @export
log_experiment_metric <- function(client, key, value, timestamp, run_id = NULL, run_uuid = NULL,
  step = NULL) {
  body <- list(key = key, run_id = run_id, run_uuid = run_uuid, step = step, timestamp = timestamp,
    value = value)
  client$do("POST", "/api/2.0/mlflow/runs/log-metric", body = body)
}

#' @rdname log_experiment_metric
#' @export 
experimentsLogMetric <- log_experiment_metric
#' Log a model.
#' 
#' **NOTE:** Experimental: This API may change or be removed in a future release
#' without warning.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param model_json MLmodel file in json format.
#' @param run_id ID of the run to log under.
#'
#'
#' @rdname log_experiment_model
#' @alias experimentsLogModel
#' @export
log_experiment_model <- function(client, model_json = NULL, run_id = NULL) {
  body <- list(model_json = model_json, run_id = run_id)
  client$do("POST", "/api/2.0/mlflow/runs/log-model", body = body)
}

#' @rdname log_experiment_model
#' @export 
experimentsLogModel <- log_experiment_model
#' Log a param.
#' 
#' Logs a param used for a run. A param is a key-value pair (string key, string
#' value). Examples include hyperparameters used for ML model training and
#' constant dates and values used in an ETL pipeline. A param can be logged only
#' once for a run.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param key Required. Name of the param.
#' @param run_id ID of the run under which to log the param.
#' @param run_uuid Deprecated, use run_id instead. ID of the run under which to log the param.
#' @param value Required. String value of the param being logged.
#'
#'
#' @rdname log_experiment_param
#' @alias experimentsLogParam
#' @export
log_experiment_param <- function(client, key, value, run_id = NULL, run_uuid = NULL) {
  body <- list(key = key, run_id = run_id, run_uuid = run_uuid, value = value)
  client$do("POST", "/api/2.0/mlflow/runs/log-parameter", body = body)
}

#' @rdname log_experiment_param
#' @export 
experimentsLogParam <- log_experiment_param
#' Restores an experiment.
#' 
#' Restore an experiment marked for deletion. This also restores associated
#' metadata, runs, metrics, params, and tags. If experiment uses FileStore,
#' underlying artifacts associated with experiment are also restored.
#' 
#' Throws `RESOURCE_DOES_NOT_EXIST` if experiment was never created or was
#' permanently deleted.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param experiment_id Required. ID of the associated experiment.
#'
#'
#' @rdname restore_experiment
#' @alias experimentsRestoreExperiment
#' @export
restore_experiment <- function(client, experiment_id) {
  body <- list(experiment_id = experiment_id)
  client$do("POST", "/api/2.0/mlflow/experiments/restore", body = body)
}

#' @rdname restore_experiment
#' @export 
experimentsRestoreExperiment <- restore_experiment
#' Restore a run.
#' 
#' Restores a deleted run.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param run_id Required. ID of the run to restore.
#'
#'
#' @rdname restore_experiment_run
#' @alias experimentsRestoreRun
#' @export
restore_experiment_run <- function(client, run_id) {
  body <- list(run_id = run_id)
  client$do("POST", "/api/2.0/mlflow/runs/restore", body = body)
}

#' @rdname restore_experiment_run
#' @export 
experimentsRestoreRun <- restore_experiment_run
#' Restore runs by deletion time.
#' 
#' Bulk restore runs in an experiment that were deleted no earlier than the
#' specified timestamp. Restores at most max_runs per request. To call this API
#' from a Databricks Notebook in Python, you can use the client code snippet on
#' https://learn.microsoft.com/en-us/azure/databricks/mlflow/runs#bulk-restore.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param experiment_id Required. The ID of the experiment containing the runs to restore.
#' @param max_runs An optional positive integer indicating the maximum number of runs to restore.
#' @param min_timestamp_millis Required. The minimum deletion timestamp in milliseconds since the UNIX epoch for restoring runs.
#'
#'
#' @rdname restore_experiment_runs
#' @alias experimentsRestoreRuns
#' @export
restore_experiment_runs <- function(client, experiment_id, min_timestamp_millis,
  max_runs = NULL) {
  body <- list(experiment_id = experiment_id, max_runs = max_runs, min_timestamp_millis = min_timestamp_millis)
  client$do("POST", "/api/2.0/mlflow/databricks/runs/restore-runs", body = body)
}

#' @rdname restore_experiment_runs
#' @export 
experimentsRestoreRuns <- restore_experiment_runs
#' Search experiments.
#' 
#' Searches for experiments that satisfy specified search criteria.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param filter String representing a SQL filter condition (e.g.
#' @param max_results Maximum number of experiments desired.
#' @param order_by List of columns for ordering search results, which can include experiment name and last updated timestamp with an optional 'DESC' or 'ASC' annotation, where 'ASC' is the default.
#' @param page_token Token indicating the page of experiments to fetch.
#' @param view_type Qualifier for type of experiments to be returned.
#'
#' @return `data.frame` with all of the response pages.
#'
#'
#' @rdname search_experiment_experiments
#' @alias experimentsSearchExperiments
#' @export
search_experiment_experiments <- function(client, filter = NULL, max_results = NULL,
  order_by = NULL, page_token = NULL, view_type = NULL) {
  body <- list(filter = filter, max_results = max_results, order_by = order_by,
    page_token = page_token, view_type = view_type)

  results <- data.frame()
  while (TRUE) {
    json <- client$do("POST", "/api/2.0/mlflow/experiments/search", body = body)
    if (is.null(nrow(json$experiments))) {
      break
    }
    # append this page of results to one results data.frame
    results <- dplyr::bind_rows(results, json$experiments)
    if (is.null(json$next_page_token)) {
      break
    }
    body$page_token <- json$next_page_token
  }
  return(results)

}

#' @rdname search_experiment_experiments
#' @export 
experimentsSearchExperiments <- search_experiment_experiments
#' Search for runs.
#' 
#' Searches for runs that satisfy expressions.
#' 
#' Search expressions can use `mlflowMetric` and `mlflowParam` keys.',
#' @param client Required. Instance of DatabricksClient()
#'
#' @param experiment_ids List of experiment IDs to search over.
#' @param filter A filter expression over params, metrics, and tags, that allows returning a subset of runs.
#' @param max_results Maximum number of runs desired.
#' @param order_by List of columns to be ordered by, including attributes, params, metrics, and tags with an optional 'DESC' or 'ASC' annotation, where 'ASC' is the default.
#' @param page_token Token for the current page of runs.
#' @param run_view_type Whether to display only active, only deleted, or all runs.
#'
#' @return `data.frame` with all of the response pages.
#'
#'
#' @rdname search_experiment_runs
#' @alias experimentsSearchRuns
#' @export
search_experiment_runs <- function(client, experiment_ids = NULL, filter = NULL,
  max_results = NULL, order_by = NULL, page_token = NULL, run_view_type = NULL) {
  body <- list(experiment_ids = experiment_ids, filter = filter, max_results = max_results,
    order_by = order_by, page_token = page_token, run_view_type = run_view_type)

  results <- data.frame()
  while (TRUE) {
    json <- client$do("POST", "/api/2.0/mlflow/runs/search", body = body)
    if (is.null(nrow(json$runs))) {
      break
    }
    # append this page of results to one results data.frame
    results <- dplyr::bind_rows(results, json$runs)
    if (is.null(json$next_page_token)) {
      break
    }
    body$page_token <- json$next_page_token
  }
  return(results)

}

#' @rdname search_experiment_runs
#' @export 
experimentsSearchRuns <- search_experiment_runs
#' Set a tag.
#' 
#' Sets a tag on an experiment. Experiment tags are metadata that can be
#' updated.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param experiment_id Required. ID of the experiment under which to log the tag.
#' @param key Required. Name of the tag.
#' @param value Required. String value of the tag being logged.
#'
#'
#' @rdname set_experiment_tag
#' @alias experimentsSetExperimentTag
#' @export
set_experiment_tag <- function(client, experiment_id, key, value) {
  body <- list(experiment_id = experiment_id, key = key, value = value)
  client$do("POST", "/api/2.0/mlflow/experiments/set-experiment-tag", body = body)
}

#' @rdname set_experiment_tag
#' @export 
experimentsSetExperimentTag <- set_experiment_tag
#' Set experiment permissions.
#' 
#' Sets permissions on an experiment. Experiments can inherit permissions from
#' their root object.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param access_control_list This field has no description yet.
#' @param experiment_id Required. The experiment for which to get or manage permissions.
#'
#'
#' @rdname set_experiment_permissions
#' @alias experimentsSetPermissions
#' @export
set_experiment_permissions <- function(client, experiment_id, access_control_list = NULL) {
  body <- list(access_control_list = access_control_list)
  client$do("PUT", paste("/api/2.0/permissions/experiments/", experiment_id, sep = ""),
    body = body)
}

#' @rdname set_experiment_permissions
#' @export 
experimentsSetPermissions <- set_experiment_permissions
#' Set a tag.
#' 
#' Sets a tag on a run. Tags are run metadata that can be updated during a run
#' and after a run completes.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param key Required. Name of the tag.
#' @param run_id ID of the run under which to log the tag.
#' @param run_uuid Deprecated, use run_id instead. ID of the run under which to log the tag.
#' @param value Required. String value of the tag being logged.
#'
#'
#' @rdname set_experiment_tag
#' @alias experimentsSetTag
#' @export
set_experiment_tag <- function(client, key, value, run_id = NULL, run_uuid = NULL) {
  body <- list(key = key, run_id = run_id, run_uuid = run_uuid, value = value)
  client$do("POST", "/api/2.0/mlflow/runs/set-tag", body = body)
}

#' @rdname set_experiment_tag
#' @export 
experimentsSetTag <- set_experiment_tag
#' Update an experiment.
#' 
#' Updates experiment metadata.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param experiment_id Required. ID of the associated experiment.
#' @param new_name If provided, the experiment's name is changed to the new name.
#'
#'
#' @rdname update_experiment
#' @alias experimentsUpdateExperiment
#' @export
update_experiment <- function(client, experiment_id, new_name = NULL) {
  body <- list(experiment_id = experiment_id, new_name = new_name)
  client$do("POST", "/api/2.0/mlflow/experiments/update", body = body)
}

#' @rdname update_experiment
#' @export 
experimentsUpdateExperiment <- update_experiment
#' Update experiment permissions.
#' 
#' Updates the permissions on an experiment. Experiments can inherit permissions
#' from their root object.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param access_control_list This field has no description yet.
#' @param experiment_id Required. The experiment for which to get or manage permissions.
#'
#'
#' @rdname update_experiment_permissions
#' @alias experimentsUpdatePermissions
#' @export
update_experiment_permissions <- function(client, experiment_id, access_control_list = NULL) {
  body <- list(access_control_list = access_control_list)
  client$do("PATCH", paste("/api/2.0/permissions/experiments/", experiment_id,
    sep = ""), body = body)
}

#' @rdname update_experiment_permissions
#' @export 
experimentsUpdatePermissions <- update_experiment_permissions
#' Update a run.
#' 
#' Updates run metadata.
#' @param client Required. Instance of DatabricksClient()
#'
#' @param end_time Unix timestamp in milliseconds of when the run ended.
#' @param run_id ID of the run to update.
#' @param run_uuid Deprecated, use run_id instead. ID of the run to update.
#' @param status Updated status of the run.
#'
#'
#' @rdname update_experiment_run
#' @alias experimentsUpdateRun
#' @export
update_experiment_run <- function(client, end_time = NULL, run_id = NULL, run_uuid = NULL,
  status = NULL) {
  body <- list(end_time = end_time, run_id = run_id, run_uuid = run_uuid, status = status)
  client$do("POST", "/api/2.0/mlflow/runs/update", body = body)
}

#' @rdname update_experiment_run
#' @export 
experimentsUpdateRun <- update_experiment_run






























