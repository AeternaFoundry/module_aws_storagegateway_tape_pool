variable "storagegateway_tape_pools" {
  description = <<EOT
Map of storagegateway_tape_pools, attributes below
Required:
    - pool_name
    - storage_class
Optional:
    - region
    - retention_lock_time_in_days
    - retention_lock_type
    - tags
    - tags_all
EOT

  type = map(object({
    pool_name                   = string
    storage_class               = string
    region                      = optional(string)
    retention_lock_time_in_days = optional(number)
    retention_lock_type         = optional(string)
    tags                        = optional(map(string))
    tags_all                    = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.storagegateway_tape_pools : (
        length(v.pool_name) >= 1 && length(v.pool_name) <= 100
      )
    ])
    error_message = "must be between 1 and 100 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.storagegateway_tape_pools : (
        v.retention_lock_time_in_days == null || (v.retention_lock_time_in_days >= 0 && v.retention_lock_time_in_days <= 36500)
      )
    ])
    error_message = "must be between 0 and 36500"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

