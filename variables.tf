variable "core_image_shapes_lookup" {
  description = <<EOT
Map of core_image_shapes_lookup, attributes below
Required:
    - image_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    image_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

