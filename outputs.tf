output "ai_gateway_model_provider_services_comment" {
  description = "Map of comment values across all ai_gateway_model_provider_services, keyed the same as var.ai_gateway_model_provider_services except keys with no comment are omitted"
  value       = { for k, v in databricks_ai_gateway_model_provider_service.ai_gateway_model_provider_services : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "ai_gateway_model_provider_services_config" {
  description = "Map of config values across all ai_gateway_model_provider_services, keyed the same as var.ai_gateway_model_provider_services except keys with no config are omitted"
  value       = { for k, v in databricks_ai_gateway_model_provider_service.ai_gateway_model_provider_services : k => v.config if v.config != null && length(v.config) > 0 }
}
output "ai_gateway_model_provider_services_create_time" {
  description = "Map of create_time values across all ai_gateway_model_provider_services, keyed the same as var.ai_gateway_model_provider_services except keys with no create_time are omitted"
  value       = { for k, v in databricks_ai_gateway_model_provider_service.ai_gateway_model_provider_services : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "ai_gateway_model_provider_services_created_by" {
  description = "Map of created_by values across all ai_gateway_model_provider_services, keyed the same as var.ai_gateway_model_provider_services except keys with no created_by are omitted"
  value       = { for k, v in databricks_ai_gateway_model_provider_service.ai_gateway_model_provider_services : k => v.created_by if v.created_by != null && length(v.created_by) > 0 }
}
output "ai_gateway_model_provider_services_effective_owner" {
  description = "Map of effective_owner values across all ai_gateway_model_provider_services, keyed the same as var.ai_gateway_model_provider_services except keys with no effective_owner are omitted"
  value       = { for k, v in databricks_ai_gateway_model_provider_service.ai_gateway_model_provider_services : k => v.effective_owner if v.effective_owner != null && length(v.effective_owner) > 0 }
}
output "ai_gateway_model_provider_services_etag" {
  description = "Map of etag values across all ai_gateway_model_provider_services, keyed the same as var.ai_gateway_model_provider_services except keys with no etag are omitted"
  value       = { for k, v in databricks_ai_gateway_model_provider_service.ai_gateway_model_provider_services : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "ai_gateway_model_provider_services_metastore_id" {
  description = "Map of metastore_id values across all ai_gateway_model_provider_services, keyed the same as var.ai_gateway_model_provider_services except keys with no metastore_id are omitted"
  value       = { for k, v in databricks_ai_gateway_model_provider_service.ai_gateway_model_provider_services : k => v.metastore_id if v.metastore_id != null && length(v.metastore_id) > 0 }
}
output "ai_gateway_model_provider_services_model_provider_service_id" {
  description = "Map of model_provider_service_id values across all ai_gateway_model_provider_services, keyed the same as var.ai_gateway_model_provider_services except keys with no model_provider_service_id are omitted"
  value       = { for k, v in databricks_ai_gateway_model_provider_service.ai_gateway_model_provider_services : k => v.model_provider_service_id if v.model_provider_service_id != null && length(v.model_provider_service_id) > 0 }
}
output "ai_gateway_model_provider_services_name" {
  description = "Map of name values across all ai_gateway_model_provider_services, keyed the same as var.ai_gateway_model_provider_services except keys with no name are omitted"
  value       = { for k, v in databricks_ai_gateway_model_provider_service.ai_gateway_model_provider_services : k => v.name if v.name != null && length(v.name) > 0 }
}
output "ai_gateway_model_provider_services_parent" {
  description = "Map of parent values across all ai_gateway_model_provider_services, keyed the same as var.ai_gateway_model_provider_services except keys with no parent are omitted"
  value       = { for k, v in databricks_ai_gateway_model_provider_service.ai_gateway_model_provider_services : k => v.parent if v.parent != null && length(v.parent) > 0 }
}
output "ai_gateway_model_provider_services_provider_config" {
  description = "Map of provider_config values across all ai_gateway_model_provider_services, keyed the same as var.ai_gateway_model_provider_services except keys with no provider_config are omitted"
  value       = { for k, v in databricks_ai_gateway_model_provider_service.ai_gateway_model_provider_services : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}
output "ai_gateway_model_provider_services_update_time" {
  description = "Map of update_time values across all ai_gateway_model_provider_services, keyed the same as var.ai_gateway_model_provider_services except keys with no update_time are omitted"
  value       = { for k, v in databricks_ai_gateway_model_provider_service.ai_gateway_model_provider_services : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}
output "ai_gateway_model_provider_services_updated_by" {
  description = "Map of updated_by values across all ai_gateway_model_provider_services, keyed the same as var.ai_gateway_model_provider_services except keys with no updated_by are omitted"
  value       = { for k, v in databricks_ai_gateway_model_provider_service.ai_gateway_model_provider_services : k => v.updated_by if v.updated_by != null && length(v.updated_by) > 0 }
}

