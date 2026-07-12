data "azurerm_key_vault_secret" "certificate_password" {
  for_each     = { for k, v in var.container_app_environment_custom_domains : k => v if v.certificate_password_key_vault_id != null && v.certificate_password_key_vault_secret_name != null }
  name         = each.value.certificate_password_key_vault_secret_name
  key_vault_id = each.value.certificate_password_key_vault_id
}
resource "azurerm_container_app_environment_custom_domain" "container_app_environment_custom_domains" {
  for_each = var.container_app_environment_custom_domains

  certificate_blob_base64      = each.value.certificate_blob_base64
  certificate_password         = each.value.certificate_password != null ? each.value.certificate_password : try(data.azurerm_key_vault_secret.certificate_password[each.key].value, null)
  container_app_environment_id = each.value.container_app_environment_id
  dns_suffix                   = each.value.dns_suffix
}

