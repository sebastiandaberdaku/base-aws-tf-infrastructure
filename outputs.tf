output "s3_backend_arn" {
  value = module.remote_state_bootstrap.s3_backend_arn
}

output "dynamo_lock_table_arn" {
  value = module.remote_state_bootstrap.dynamo_lock_table_arn
}

output "admin_iam_role_arn" {
  value = module.remote_state_bootstrap.admin_iam_role_arn
}
