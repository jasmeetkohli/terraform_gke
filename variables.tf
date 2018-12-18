variable "project" {
  description = "name of the project"
}

variable "region" {
  description = "region where the resources shall reside"
}

variable "account_creds_file_path" {
  description = "Path to G-service account"
}

#================ WebApp Variables ===================

variable namespace {
  description = "Namespace for web-app"
  default     = "web-app"
}

variable config_map_name {
  description = "name of the config map to be used by replication-controller"
  default     = "web-app-map"
}

variable app_name {
  description = "name of the application to be deployed"
  default     = "web-server"
}

variable port {
  description = "Application Port that must be exposed"
  default     = 8000
}

variable replicas {
  description = "Number of replicas of application deployed"
  default     = 4
}

variable restart_policy {
  description = "Action to be taken when application exits with non-zero code"
  default     = "Always"
}

variable image_name {
  description = "name of the docker image defining the application"
  default     = "jasmeetkohli/python-webserver"
}

variable service_name {
  description = "name of the service that will expose the application"
  default     = "web-app-service"
}

#================ Cluster Variables ===================

variable "cluster_auth_username" {
  description = "username for k8s cluster"
}

variable "cluster_auth_password" {
  description = "password for k8s cluster"
}

variable "cluster_name" {
  description = "The name of the cluster, unique within the project and zone."
  default     = "demo"
}

variable "cluster_description" {
  description = "Description of the Kubernetes Cluster"
  default     = "Cluster created for demo purpose."
}

variable "cluster_zone" {
  description = "The zone that the master and the number of nodes specified in initial_node_count should be created in."
  default     = "us-central1-a"
}

variable "cluster_initial_node_count" {
  description = "The number of nodes to create in this cluster (not including the Kubernetes master). Must be set if node_pool is not set."
  default     = 2
}

variable "cluster_machine_type" {
  default     = "n1-standard-1"
  description = "GCP Machine type for cluster nodes"
}

variable "cluster_image_type" {
  default     = "cos"
  description = "GCP Image type for cluster nodes"
}
