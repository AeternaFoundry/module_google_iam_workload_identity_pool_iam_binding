resource "google_iam_workload_identity_pool_iam_binding" "iam_workload_identity_pool_iam_bindings" {
  for_each = var.iam_workload_identity_pool_iam_bindings

  members                   = each.value.members
  role                      = each.value.role
  workload_identity_pool_id = each.value.workload_identity_pool_id
  project                   = each.value.project

  dynamic "condition" {
    for_each = each.value.condition != null ? [each.value.condition] : []
    content {
      description = condition.value.description
      expression  = condition.value.expression
      title       = condition.value.title
    }
  }
}

