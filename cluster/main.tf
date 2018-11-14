resource "google_container_cluster" "primary" {
  name               = "${var.cluster_name}"
  zone               = "${var.cluster_zone}"
  initial_node_count = "${var.cluster_initial_node_count}"

  master_auth {
    username = "${var.cluster_auth_username}"
    password = "${var.cluster_auth_password}"
  }

  node_config {
    machine_type = "${var.cluster_machine_type}"
    image_type   = "${var.cluster_image_type}"

    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }
}
