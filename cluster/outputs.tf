output "gcp_cluster_endpoint" {
  value = "${google_container_cluster.primary.endpoint}"
}

output "gcp_cluster_client_certificate" {
  value = "${google_container_cluster.primary.master_auth.0.client_certificate}"
}

output "gcp_cluster_client_key" {
  value = "${google_container_cluster.primary.master_auth.0.client_key}"
}

output "gcp_cluster_ca_certificate" {
  value = "${google_container_cluster.primary.master_auth.0.cluster_ca_certificate}"
}
