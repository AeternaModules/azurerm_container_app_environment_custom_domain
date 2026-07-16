output "container_app_environment_custom_domains_id" {
  description = "Map of id values across all container_app_environment_custom_domains, keyed the same as var.container_app_environment_custom_domains"
  value       = { for k, v in azurerm_container_app_environment_custom_domain.container_app_environment_custom_domains : k => v.id if v.id != null && length(v.id) > 0 }
}
output "container_app_environment_custom_domains_certificate_blob_base64" {
  description = "Map of certificate_blob_base64 values across all container_app_environment_custom_domains, keyed the same as var.container_app_environment_custom_domains"
  value       = { for k, v in azurerm_container_app_environment_custom_domain.container_app_environment_custom_domains : k => v.certificate_blob_base64 if v.certificate_blob_base64 != null && length(v.certificate_blob_base64) > 0 }
}
output "container_app_environment_custom_domains_certificate_password" {
  description = "Map of certificate_password values across all container_app_environment_custom_domains, keyed the same as var.container_app_environment_custom_domains"
  value       = { for k, v in azurerm_container_app_environment_custom_domain.container_app_environment_custom_domains : k => v.certificate_password if v.certificate_password != null && length(v.certificate_password) > 0 }
  sensitive   = true
}
output "container_app_environment_custom_domains_container_app_environment_id" {
  description = "Map of container_app_environment_id values across all container_app_environment_custom_domains, keyed the same as var.container_app_environment_custom_domains"
  value       = { for k, v in azurerm_container_app_environment_custom_domain.container_app_environment_custom_domains : k => v.container_app_environment_id if v.container_app_environment_id != null && length(v.container_app_environment_id) > 0 }
}
output "container_app_environment_custom_domains_dns_suffix" {
  description = "Map of dns_suffix values across all container_app_environment_custom_domains, keyed the same as var.container_app_environment_custom_domains"
  value       = { for k, v in azurerm_container_app_environment_custom_domain.container_app_environment_custom_domains : k => v.dns_suffix if v.dns_suffix != null && length(v.dns_suffix) > 0 }
}

