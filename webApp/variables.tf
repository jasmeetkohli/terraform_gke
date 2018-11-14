variable "host" {}
variable cluster_auth_username {}
variable cluster_auth_password {}
variable client_certificate {}
variable client_key {}
variable cluster_ca_certificate {}

variable namespace {
  default = "web-app"
}

variable config_map_name {
  default = "web-app-map"
}

variable app_name {
  default = "web-server"
}

variable port {
  default = 8000
}

variable replicas {
  default = 4
}

variable restart_policy {
  default = "Always"
}

variable image_name {
  default = "jasmeetkohli/python-webserver"
}

variable service_name {
  default = "web-app-service"
}
