data "oci_core_image_shapes" "core_image_shapes_lookup" {
  for_each = var.core_image_shapes_lookup

  image_id = each.value.image_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

