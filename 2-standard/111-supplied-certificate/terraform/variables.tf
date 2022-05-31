variable "api-certs_cert_dir" {
  type = string
  description = "Certificate directory"
  default = "certs"
}
variable "api-certs_apps_cert" {
  type = string
  description = "Default ingress certificate"
}
variable "api-certs_apps_key" {
  type = string
  description = "Default ingress certificate key"
}
variable "api-certs_apps_issuer_ca" {
  type = string
  description = "Default ingress certificate issuer CA"
}
variable "api-certs_api_cert" {
  type = string
  description = "API Server certificate"
}
variable "api-certs_api_key" {
  type = string
  description = "API Server certificate key"
}
variable "api-certs_api_issuer_ca" {
  type = string
  description = "API Server certificate issuer CA"
}
variable "api-certs_bin_dir" {
  type = string
  description = "Path to directory where binaries can be found."
}
variable "api-certs_config_file_path" {
  type = string
  description = "Path to kube config."
}

