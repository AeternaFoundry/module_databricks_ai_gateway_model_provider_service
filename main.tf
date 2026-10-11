resource "databricks_ai_gateway_model_provider_service" "ai_gateway_model_provider_services" {
  for_each = var.ai_gateway_model_provider_services

  model_provider_service_id = each.value.model_provider_service_id
  parent                    = each.value.parent
  comment                   = each.value.comment
  config                    = each.value.config
  provider_config           = each.value.provider_config
}

