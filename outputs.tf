output "container_app_environment_custom_domains" {
  description = "All container_app_environment_custom_domain resources"
  value       = azurerm_container_app_environment_custom_domain.container_app_environment_custom_domains
  sensitive   = true
}
output "container_app_environment_custom_domains_certificate_blob_base64" {
  description = "List of certificate_blob_base64 values across all container_app_environment_custom_domains"
  value       = [for k, v in azurerm_container_app_environment_custom_domain.container_app_environment_custom_domains : v.certificate_blob_base64]
}
output "container_app_environment_custom_domains_certificate_password" {
  description = "List of certificate_password values across all container_app_environment_custom_domains"
  value       = [for k, v in azurerm_container_app_environment_custom_domain.container_app_environment_custom_domains : v.certificate_password]
  sensitive   = true
}
output "container_app_environment_custom_domains_container_app_environment_id" {
  description = "List of container_app_environment_id values across all container_app_environment_custom_domains"
  value       = [for k, v in azurerm_container_app_environment_custom_domain.container_app_environment_custom_domains : v.container_app_environment_id]
}
output "container_app_environment_custom_domains_dns_suffix" {
  description = "List of dns_suffix values across all container_app_environment_custom_domains"
  value       = [for k, v in azurerm_container_app_environment_custom_domain.container_app_environment_custom_domains : v.dns_suffix]
}

