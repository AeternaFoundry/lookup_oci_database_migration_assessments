data "oci_database_migration_assessments" "database_migration_assessments_lookup" {
  for_each = var.database_migration_assessments_lookup

  compartment_id    = each.value.compartment_id
  display_name      = each.value.display_name
  lifecycle_details = each.value.lifecycle_details
  state             = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

