variable "redshift_resource_policies" {
  description = <<EOT
Map of redshift_resource_policies, attributes below
Required:
    - policy
    - resource_arn
Optional:
    - region
EOT

  type = map(object({
    policy       = string
    resource_arn = string
    region       = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

