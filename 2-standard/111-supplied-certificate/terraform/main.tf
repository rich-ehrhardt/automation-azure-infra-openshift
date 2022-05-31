module "api-certs" {
  source = "github.com/cloud-native-toolkit/terraform-any-ocp-ipi-certs?ref=v1.0.0"

  api_cert = var.api-certs_api_cert
  api_issuer_ca = var.api-certs_api_issuer_ca
  api_key = var.api-certs_api_key
  apps_cert = var.api-certs_apps_cert
  apps_issuer_ca = var.api-certs_apps_issuer_ca
  apps_key = var.api-certs_apps_key
  bin_dir = var.api-certs_bin_dir
  cert_dir = var.api-certs_cert_dir
  config_file_path = var.api-certs_config_file_path
}
