output "resource_group_name" {
  description = "Name of the Azure Resource Group"
  value       = azurerm_resource_group.rg.name
}

output "acr_name" {
  description = "Azure Container Registry name"
  value       = azurerm_container_registry.acr.name
}

output "acr_login_server" {
  description = "Azure Container Registry login server"
  value       = azurerm_container_registry.acr.login_server
}

output "aks_cluster_name" {
  description = "AKS cluster name"
  value       = azurerm_kubernetes_cluster.aks.name
}

output "storage_account_name" {
  description = "Storage Account name"
  value       = azurerm_storage_account.storage_account.name
}

output "student_profile_container" {
  description = "Student profile storage container"
  value       = azurerm_storage_container.student_profile.name
}

output "lecturer_profile_container" {
  description = "Lecturer profile storage container"
  value       = azurerm_storage_container.lecturer_profile.name
}

output "aks_node_count" {
  description = "Number of AKS nodes"
  value       = azurerm_kubernetes_cluster.aks.default_node_pool[0].node_count
}

output "acr_login_command" {
  description = "Command to log in to ACR"
  value       = "az acr login --name ${azurerm_container_registry.acr.name}"
}

output "storage_account_connection_string" {
  description = "Storage Account connection string for GitHub Environment Secrets"
  value       = azurerm_storage_account.storage_account.primary_connection_string
  sensitive   = true
}