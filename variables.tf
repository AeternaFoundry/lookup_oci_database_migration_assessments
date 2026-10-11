variable "database_migration_assessments_lookup" {
  description = <<EOT
Map of database_migration_assessments_lookup, attributes below
Required:
    - compartment_id
Optional:
    - display_name
    - lifecycle_details
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id    = string
    display_name      = optional(string)
    lifecycle_details = optional(string)
    state             = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

