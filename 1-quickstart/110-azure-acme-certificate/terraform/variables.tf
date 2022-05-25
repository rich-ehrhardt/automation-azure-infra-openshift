variable "resource_group_name" {
  type = string
  description = "Resource Group where the public DNS zone is deployed"
}

variable "acme_registration_email" {
  type = string
  description = "Email address used to register with letsencrypt"
}

variable "subscription_id" {
  type = string
  description = "Azure Subscription ID"
}

variable "tenant_id" {
  type = string
  description = "Azure Tenant ID"
}

variable "client_id" {
  type = string
  description = "Azure Client ID"
}

variable "client_secret" {
  type = string
  description = "Azure Client Secret"
}

variable "cluster_name" {
  type = string
  description = "The name of the cluster to create"
  default = ""
}

variable "base_domain_name" {
  type = string
  description = "Base wildcard domain name in the Azure DNS zone (e.g. ocp.myexample.com)"
}
