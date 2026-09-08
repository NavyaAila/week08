variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "australiaeast"
}

variable "resource_group_name" {
  description = "Azure Resource Group name"
  type        = string
}

variable "acr_name" {
  description = "Azure Container Registry name"
  type        = string

  validation {
    condition     = can(regex("^[a-z0-9]{5,50}$", var.acr_name))
    error_message = "ACR name must be 5-50 characters and contain only lowercase letters and numbers."
  }
}

variable "storage_account_name" {
  description = "Azure Storage Account name"
  type        = string

  validation {
    condition     = can(regex("^[a-z0-9]{3,24}$", var.storage_account_name))
    error_message = "Storage account name must be 3-24 characters and contain only lowercase letters and numbers."
  }
}

variable "aks_cluster_name" {
  description = "AKS cluster name"
  type        = string
}

variable "aks_dns_prefix" {
  description = "AKS DNS prefix"
  type        = string
}

variable "aks_node_vm_size" {
  description = "AKS node VM size"
  type        = string
  default     = "Standard_D2s_v3"
}

variable "kubernetes_version" {
  description = "Kubernetes version"
  type        = string
  default     = "1.36.1"
}