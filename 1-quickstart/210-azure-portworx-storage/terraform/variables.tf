variable "azure-portworx_provision" {
  type = string
  description = "If set to true installs Portworx on the given cluster"
  default = "true"
}
variable "subscription_id" {
  type = string
  description = "the value of azure_subscription_id"
  default = ""
}
variable "client_id" {
  type = string
  description = "the value of azure_client_id"
  default = ""
}
variable "client_secret" {
  type = string
  description = "the value of azure_client_secret"
  default = ""
}
variable "tenant_id" {
  type = string
  description = "the value of azure_tenant_id"
  default = ""
}
variable "cluster_name" {
  type = string
  description = "The name of the ARO cluster"
}

variable "region" {
  type = string
  description = "Azure location into which the cluster is deployed"
}

variable "resource_group_name" {
  type = string
  description = "Resource group where cluster is deployed"
}

variable "azure-portworx_cluster_type" {
  type = string
  description = "Type of OCP cluster on Azure (ARO | IPI)"
  default = "IPI"
}

variable "azure-portworx_disk_size" {
  type = string
  description = "Disk size for each Portworx volume"
  default = "1000"
}
variable "azure-portworx_kvdb_disk_size" {
  type = string
  description = "the value of azure-portworx_kvdb_disk_size"
  default = "150"
}
variable "azure-portworx_px_enable_monitoring" {
  type = bool
  description = "Enable monitoring on PX"
  default = true
}
variable "azure-portworx_px_enable_csi" {
  type = bool
  description = "Enable CSI on PX"
  default = true
}

variable "px_cluster_id" {
  type = string
  description = "Portworx cluster UUID - refer to portworx repo for details"
}

variable "px_user_id" {
  type = string
  description = "Portworx user id (required for Portworx Essentials)"
}

variable "px_osb_endpoint" {
  type = string
  description = "Portworx OSB endpoint"
}

variable "config_file_path" {
  type = string
  description = "Full path to the kubeconfig file"
}