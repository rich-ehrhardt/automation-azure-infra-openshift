locals {
  portworx_config = {
    cluster_id = var.px_cluster_id
    user_id = var.px_user_id
    osb_endpoint = var.px_osb_endpoint
    type = "essentials"
    enable_encryption = false  
  }
}

module "cli-tools" {
  source = "github.com/cloud-native-toolkit/terraform-util-clis.git"

  clis = ["oc"]
}

module "azure-portworx" {
  source = "github.com/cloud-native-toolkit/terraform-azure-portworx?ref=v0.0.2"

  azure_client_id = var.client_id
  azure_client_secret = var.client_secret
  azure_subscription_id = var.subscription_id
  azure_tenant_id = var.tenant_id
  cluster_name = var.cluster_name
  cluster_config_file = var.config_file_path
  cluster_type = var.azure-portworx_cluster_type
  portworx_config = local.portworx_config
  resource_group_name = var.resource_group_name
  region=var.region
}