output "core_image_shapes_lookup_id" {
  description = "Map of id values across all core_image_shapes_lookup, keyed the same as var.core_image_shapes_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_core_image_shapes.core_image_shapes_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_image_shapes_lookup_filter" {
  description = "Map of filter values across all core_image_shapes_lookup, keyed the same as var.core_image_shapes_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_core_image_shapes.core_image_shapes_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "core_image_shapes_lookup_image_id" {
  description = "Map of image_id values across all core_image_shapes_lookup, keyed the same as var.core_image_shapes_lookup except keys with no image_id are omitted"
  value       = { for k, v in data.oci_core_image_shapes.core_image_shapes_lookup : k => v.image_id if v.image_id != null && length(v.image_id) > 0 }
}
output "core_image_shapes_lookup_image_shape_compatibilities" {
  description = "Map of image_shape_compatibilities values across all core_image_shapes_lookup, keyed the same as var.core_image_shapes_lookup except keys with no image_shape_compatibilities are omitted"
  value       = { for k, v in data.oci_core_image_shapes.core_image_shapes_lookup : k => v.image_shape_compatibilities if v.image_shape_compatibilities != null && length(v.image_shape_compatibilities) > 0 }
}

