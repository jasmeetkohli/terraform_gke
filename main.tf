provider "google" {
  credentials = "${file("${var.account_creds_file_path}")}"
  project     = "${var.project}"
  region      = "${var.region}"
}

module "cluster" {
  source = "./cluster/"

  project                    = "${var.project}"
  region                     = "${var.region}"
  cluster_auth_username      = "${var.cluster_auth_username}"
  cluster_auth_password      = "${var.cluster_auth_password}"
  cluster_name               = "${var.cluster_name}"
  cluster_description        = "${var.cluster_description}"
  cluster_zone               = "${var.cluster_zone}"
  cluster_initial_node_count = "${var.cluster_initial_node_count}"
  cluster_auth_username      = "${var.cluster_auth_username}"
  cluster_auth_password      = "${var.cluster_auth_password}"
  cluster_machine_type       = "${var.cluster_machine_type}"
  cluster_image_type         = "${var.cluster_image_type}"
}

module "webApp" {
  source = "./webApp/"

  host                   = "${module.cluster.gcp_cluster_endpoint}"
  client_certificate     = "${base64decode(module.cluster.gcp_cluster_client_certificate)}"
  client_key             = "${base64decode(module.cluster.gcp_cluster_client_key)}"
  cluster_ca_certificate = "${base64decode(module.cluster.gcp_cluster_ca_certificate)}"

  cluster_auth_username = "${var.cluster_auth_username}"
  cluster_auth_password = "${var.cluster_auth_password}"
  namespace             = "${var.namespace}"
  config_map_name       = "${var.config_map_name}"
  app_name              = "${var.app_name}"
  port                  = "${var.port}"
  replicas              = "${var.replicas}"
  restart_policy        = "${var.restart_policy}"
  image_name            = "${var.image_name}"
  service_name          = "${var.service_name}"
}
