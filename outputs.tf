output "container_app_environment_custom_domains_certificate_blob_base64" {
  description = "Map of certificate_blob_base64 values across all container_app_environment_custom_domains, keyed the same as var.container_app_environment_custom_domains"
  value       = { for k, v in azurerm_container_app_environment_custom_domain.container_app_environment_custom_domains : k => v.certificate_blob_base64 }
}
output "container_app_environment_custom_domains_certificate_password" {
  description = "Map of certificate_password values across all container_app_environment_custom_domains, keyed the same as var.container_app_environment_custom_domains"
  value       = { for k, v in azurerm_container_app_environment_custom_domain.container_app_environment_custom_domains : k => v.certificate_password }
  sensitive   = true
}
output "container_app_environment_custom_domains_container_app_environment_id" {
  description = "Map of container_app_environment_id values across all container_app_environment_custom_domains, keyed the same as var.container_app_environment_custom_domains"
  value       = { for k, v in azurerm_container_app_environment_custom_domain.container_app_environment_custom_domains : k => v.container_app_environment_id }
}
output "container_app_environment_custom_domains_dns_suffix" {
  description = "Map of dns_suffix values across all container_app_environment_custom_domains, keyed the same as var.container_app_environment_custom_domains"
  value       = { for k, v in azurerm_container_app_environment_custom_domain.container_app_environment_custom_domains : k => v.dns_suffix }
}

