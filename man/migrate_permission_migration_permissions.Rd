% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/permission_migration.R
\name{migrate_permission_migration_permissions}
\alias{migrate_permission_migration_permissions}
\alias{permissionMigrationMigratePermissions}
\title{Migrate Permissions.}
\usage{
migrate_permission_migration_permissions(
  client,
  workspace_id,
  from_workspace_group_name,
  to_account_group_name,
  size = NULL
)

permissionMigrationMigratePermissions(
  client,
  workspace_id,
  from_workspace_group_name,
  to_account_group_name,
  size = NULL
)
}
\arguments{
\item{client}{Required. Instance of DatabricksClient()}

\item{workspace_id}{Required. WorkspaceId of the associated workspace where the permission migration will occur.}

\item{from_workspace_group_name}{Required. The name of the workspace group that permissions will be migrated from.}

\item{to_account_group_name}{Required. The name of the account group that permissions will be migrated to.}

\item{size}{The maximum number of permissions that will be migrated.}
}
\description{
Migrate a batch of permissions from a workspace local group to an account
group.
}
