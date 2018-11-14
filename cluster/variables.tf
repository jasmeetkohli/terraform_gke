variable "project" {}
variable "region" {}

variable "cluster_name" {
  type        = "string"
  description = "The name of the cluster, unique within the project and zone."
  default     = "demo"
}

variable "cluster_description" {
  type        = "string"
  description = "Description of the Kubernetes Cluster"
  default     = "Cluster created for demo purpose."
}

variable "cluster_zone" {
  type        = "string"
  description = "The zone that the master and the number of nodes specified in initial_node_count should be created in."
  default     = "us-central1-a"
}

variable "cluster_initial_node_count" {
  type        = "string"
  description = "The number of nodes to create in this cluster (not including the Kubernetes master). Must be set if node_pool is not set."
  default     = 2
}

variable "cluster_auth_username" {
  type        = "string"
  description = "The authentication information for accessing the Kubernetes master."
}

variable "cluster_auth_password" {
  type        = "string"
  description = "The authentication information for accessing the Kubernetes master."
}

variable "cluster_machine_type" {
  type        = "string"
  default     = "n1-standard-1"
  description = "GCP Machine type for cluster nodes"
}

variable "cluster_image_type" {
  type        = "string"
  default     = "cos"
  description = "GCP Image type for cluster nodes"
}

//=========================================================================================================

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
