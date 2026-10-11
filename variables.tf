variable "iam_workload_identity_pool_iam_bindings" {
  description = <<EOT
Map of iam_workload_identity_pool_iam_bindings, attributes below
Required:
    - members
    - role
    - workload_identity_pool_id
Optional:
    - project
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    members                   = set(string)
    role                      = string
    workload_identity_pool_id = string
    project                   = optional(string)
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

