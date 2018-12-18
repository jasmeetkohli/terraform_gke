resource "kubernetes_replication_controller" "runner" {
  metadata {
    name = "${var.app_name}"

    labels {
      app = "${var.app_name}"
    }

    namespace = "${var.namespace}"
  }

  spec {
    selector {
      app = "${var.app_name}"
    }

    replicas = "${var.replicas}"

    template {
      restart_policy = "${var.restart_policy}"

      container {
        image = "${var.image_name}"
        name  = "${var.app_name}"

        port {
          container_port = "${var.port}"
          protocol       = "TCP"
        }
      }
    }
  }
}
