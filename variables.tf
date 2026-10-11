variable "ai_gateway_model_provider_services" {
  description = <<EOT
Map of ai_gateway_model_provider_services, attributes below
Required:
    - model_provider_service_id
    - parent
Optional:
    - comment
    - config
    - provider_config
EOT

  type = map(object({
    model_provider_service_id = string
    parent                    = string
    comment                   = optional(string)
    config = optional(object({
      allow_all_targets = optional(bool)
      amazon_bedrock = optional(object({
        direct = optional(object({
          aws_access_key = optional(object({
            access_key_id = optional(string)
            secret_access_key = optional(object({
              plaintext = optional(string)
              secret_reference = optional(object({
                name = string
              }))
            }))
          }))
          region = optional(string)
          service_credential = optional(object({
            name = string
          }))
        }))
      }))
      anthropic = optional(object({
        direct = optional(object({
          api_key = optional(object({
            plaintext = optional(string)
            secret_reference = optional(object({
              name = string
            }))
          }))
        }))
        relayed = optional(object({
        }))
      }))
      azure_openai = optional(object({
        direct = optional(object({
          api_key = optional(object({
            plaintext = optional(string)
            secret_reference = optional(object({
              name = string
            }))
          }))
          base_url = optional(string)
          entra_service_principal = optional(object({
            client_id = optional(string)
            client_secret = optional(object({
              plaintext = optional(string)
              secret_reference = optional(object({
                name = string
              }))
            }))
            tenant_id = optional(string)
          }))
          service_credential = optional(object({
            name = string
          }))
        }))
      }))
      custom = optional(object({
        direct = optional(object({
          api_key = optional(object({
            plaintext = optional(string)
            secret_reference = optional(object({
              name = string
            }))
          }))
          base_url = optional(string)
          header_auth = optional(object({
            api_key_name = optional(string)
            api_key_value = optional(object({
              plaintext = optional(string)
              secret_reference = optional(object({
                name = string
              }))
            }))
          }))
        }))
      }))
      forward_headers          = optional(bool)
      forward_query_parameters = optional(bool)
      forward_unmanaged_paths  = optional(bool)
      gemini_enterprise = optional(object({
        direct = optional(object({
          api_key = optional(object({
            plaintext = optional(string)
            secret_reference = optional(object({
              name = string
            }))
          }))
          project_id = optional(string)
          region     = optional(string)
          service_credential = optional(object({
            name = string
          }))
        }))
      }))
      inference_table = optional(object({
        parent            = string
        table_name_prefix = optional(string)
      }))
      microsoft_foundry = optional(object({
        direct = optional(object({
          api_key = optional(object({
            plaintext = optional(string)
            secret_reference = optional(object({
              name = string
            }))
          }))
          base_url = optional(string)
          entra_service_principal = optional(object({
            client_id = optional(string)
            client_secret = optional(object({
              plaintext = optional(string)
              secret_reference = optional(object({
                name = string
              }))
            }))
            tenant_id = optional(string)
          }))
          service_credential = optional(object({
            name = string
          }))
        }))
      }))
      openai = optional(object({
        direct = optional(object({
          api_key = optional(object({
            plaintext = optional(string)
            secret_reference = optional(object({
              name = string
            }))
          }))
          base_url     = optional(string)
          organization = optional(string)
        }))
      }))
      provider_type = optional(string)
      rate_limits = optional(list(object({
        key            = string
        principal      = optional(string)
        renewal_period = string
        requests       = optional(number)
        tokens         = optional(number)
      })))
      targets = optional(list(object({
        model            = string
        native_api_types = optional(list(string))
      })))
    }))
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

