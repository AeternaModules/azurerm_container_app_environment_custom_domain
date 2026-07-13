variable "container_app_environment_custom_domains" {
  description = <<EOT
Map of container_app_environment_custom_domains, attributes below
Required:
    - certificate_blob_base64
    - certificate_password
    - certificate_password_key_vault_id (optional, alternative to certificate_password)
    - certificate_password_key_vault_secret_name (optional, alternative to certificate_password)
    - container_app_environment_id
    - dns_suffix
EOT

  type = map(object({
    certificate_blob_base64                    = string
    certificate_password                       = string
    certificate_password_key_vault_id          = optional(string)
    certificate_password_key_vault_secret_name = optional(string)
    container_app_environment_id               = string
    dns_suffix                                 = string
  }))
}

