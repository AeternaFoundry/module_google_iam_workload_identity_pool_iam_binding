output "iam_workload_identity_pool_iam_bindings_id" {
  description = "Map of id values across all iam_workload_identity_pool_iam_bindings, keyed the same as var.iam_workload_identity_pool_iam_bindings except keys with no id are omitted"
  value       = { for k, v in google_iam_workload_identity_pool_iam_binding.iam_workload_identity_pool_iam_bindings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iam_workload_identity_pool_iam_bindings_condition" {
  description = "Map of condition values across all iam_workload_identity_pool_iam_bindings, keyed the same as var.iam_workload_identity_pool_iam_bindings except keys with no condition are omitted"
  value       = { for k, v in google_iam_workload_identity_pool_iam_binding.iam_workload_identity_pool_iam_bindings : k => one(v.condition) if v.condition != null && length(v.condition) > 0 }
}
output "iam_workload_identity_pool_iam_bindings_etag" {
  description = "Map of etag values across all iam_workload_identity_pool_iam_bindings, keyed the same as var.iam_workload_identity_pool_iam_bindings except keys with no etag are omitted"
  value       = { for k, v in google_iam_workload_identity_pool_iam_binding.iam_workload_identity_pool_iam_bindings : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "iam_workload_identity_pool_iam_bindings_members" {
  description = "Map of members values across all iam_workload_identity_pool_iam_bindings, keyed the same as var.iam_workload_identity_pool_iam_bindings except keys with no members are omitted"
  value       = { for k, v in google_iam_workload_identity_pool_iam_binding.iam_workload_identity_pool_iam_bindings : k => v.members if v.members != null && length(v.members) > 0 }
}
output "iam_workload_identity_pool_iam_bindings_project" {
  description = "Map of project values across all iam_workload_identity_pool_iam_bindings, keyed the same as var.iam_workload_identity_pool_iam_bindings except keys with no project are omitted"
  value       = { for k, v in google_iam_workload_identity_pool_iam_binding.iam_workload_identity_pool_iam_bindings : k => v.project if v.project != null && length(v.project) > 0 }
}
output "iam_workload_identity_pool_iam_bindings_role" {
  description = "Map of role values across all iam_workload_identity_pool_iam_bindings, keyed the same as var.iam_workload_identity_pool_iam_bindings except keys with no role are omitted"
  value       = { for k, v in google_iam_workload_identity_pool_iam_binding.iam_workload_identity_pool_iam_bindings : k => v.role if v.role != null && length(v.role) > 0 }
}
output "iam_workload_identity_pool_iam_bindings_workload_identity_pool_id" {
  description = "Map of workload_identity_pool_id values across all iam_workload_identity_pool_iam_bindings, keyed the same as var.iam_workload_identity_pool_iam_bindings except keys with no workload_identity_pool_id are omitted"
  value       = { for k, v in google_iam_workload_identity_pool_iam_binding.iam_workload_identity_pool_iam_bindings : k => v.workload_identity_pool_id if v.workload_identity_pool_id != null && length(v.workload_identity_pool_id) > 0 }
}

