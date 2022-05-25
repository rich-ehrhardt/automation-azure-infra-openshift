module "api-certificate" {
  source = "github.com/cloud-native-toolkit/terraform-azure-acme-certificate?ref=v1.0.0"

  domain          = "api.${var.cluster_name}.${var.base_domain_name}"
  wildcard_domain = true

  acme_registration_email = var.acme_registration_email

  resource_group_name = var.resource_group_name
  client_id = var.client_id
  client_secret = var.client_secret
  subscription_id = var.subscription_id
  tenant_id = var.tenant_id

}

module "apps-certificate" {
  source = "github.com/cloud-native-toolkit/terraform-azure-acme-certificate?ref=v1.0.0"

  domain          = "apps.${var.cluster_name}.${var.base_domain_name}"
  wildcard_domain = true

  acme_registration_email = var.acme_registration_email

  resource_group_name = var.resource_group_name
  client_id = var.client_id
  client_secret = var.client_secret
  subscription_id = var.subscription_id
  tenant_id = var.tenant_id
}
