provider "kubernetes" {
  host     = "${var.host}"
  username = "${var.cluster_auth_username}"
  password = "${var.cluster_auth_password}"

  client_certificate     = "${var.client_certificate}"
  client_key             = "${var.client_key}"
  cluster_ca_certificate = "${var.cluster_ca_certificate}"
}
