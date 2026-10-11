output "storagegateway_tape_pools_id" {
  description = "Map of id values across all storagegateway_tape_pools, keyed the same as var.storagegateway_tape_pools"
  value       = { for k, v in aws_storagegateway_tape_pool.storagegateway_tape_pools : k => v.id if v.id != null && length(v.id) > 0 }
}
output "storagegateway_tape_pools_arn" {
  description = "Map of arn values across all storagegateway_tape_pools, keyed the same as var.storagegateway_tape_pools"
  value       = { for k, v in aws_storagegateway_tape_pool.storagegateway_tape_pools : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "storagegateway_tape_pools_pool_name" {
  description = "Map of pool_name values across all storagegateway_tape_pools, keyed the same as var.storagegateway_tape_pools"
  value       = { for k, v in aws_storagegateway_tape_pool.storagegateway_tape_pools : k => v.pool_name if v.pool_name != null && length(v.pool_name) > 0 }
}
output "storagegateway_tape_pools_region" {
  description = "Map of region values across all storagegateway_tape_pools, keyed the same as var.storagegateway_tape_pools"
  value       = { for k, v in aws_storagegateway_tape_pool.storagegateway_tape_pools : k => v.region if v.region != null && length(v.region) > 0 }
}
output "storagegateway_tape_pools_retention_lock_time_in_days" {
  description = "Map of retention_lock_time_in_days values across all storagegateway_tape_pools, keyed the same as var.storagegateway_tape_pools"
  value       = { for k, v in aws_storagegateway_tape_pool.storagegateway_tape_pools : k => v.retention_lock_time_in_days if v.retention_lock_time_in_days != null }
}
output "storagegateway_tape_pools_retention_lock_type" {
  description = "Map of retention_lock_type values across all storagegateway_tape_pools, keyed the same as var.storagegateway_tape_pools"
  value       = { for k, v in aws_storagegateway_tape_pool.storagegateway_tape_pools : k => v.retention_lock_type if v.retention_lock_type != null && length(v.retention_lock_type) > 0 }
}
output "storagegateway_tape_pools_storage_class" {
  description = "Map of storage_class values across all storagegateway_tape_pools, keyed the same as var.storagegateway_tape_pools"
  value       = { for k, v in aws_storagegateway_tape_pool.storagegateway_tape_pools : k => v.storage_class if v.storage_class != null && length(v.storage_class) > 0 }
}
output "storagegateway_tape_pools_tags" {
  description = "Map of tags values across all storagegateway_tape_pools, keyed the same as var.storagegateway_tape_pools"
  value       = { for k, v in aws_storagegateway_tape_pool.storagegateway_tape_pools : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "storagegateway_tape_pools_tags_all" {
  description = "Map of tags_all values across all storagegateway_tape_pools, keyed the same as var.storagegateway_tape_pools"
  value       = { for k, v in aws_storagegateway_tape_pool.storagegateway_tape_pools : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

