provider "google" {
  credentials = "${file("${var.account_creds_file_path}")}"
  project     = "${var.project}"
  region      = "${var.region}"
}

module "cluster" {
  source = "./cluster/"

  project               = "${var.project}"
  region                = "${var.region}"
  cluster_auth_username = "${var.cluster_auth_username}"
  cluster_auth_password = "${var.cluster_auth_password}"
}

module "webApp" {
  source = "./webApp/"

  cluster_auth_username  = "${var.cluster_auth_username}"
  cluster_auth_password  = "${var.cluster_auth_password}"
  host                   = "${module.cluster.gcp_cluster_endpoint}"
  client_certificate     = "${base64decode(module.cluster.gcp_cluster_client_certificate)}"
  client_key             = "${base64decode(module.cluster.gcp_cluster_client_key)}"
  cluster_ca_certificate = "${base64decode(module.cluster.gcp_cluster_ca_certificate)}"
}
