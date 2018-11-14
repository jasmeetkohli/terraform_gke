resource "kubernetes_service" "service" {
  depends_on = ["kubernetes_namespace.namespace"]

  metadata {
    name      = "${var.service_name}"
    namespace = "${var.namespace}"

    labels {
      app = "${var.app_name}"
    }
  }

  spec {
    selector {
      app = "${var.app_name}"
    }

    session_affinity = "ClientIP"

    port {
      port        = 80
      target_port = "${var.port}"
    }

    type = "LoadBalancer"
  }
}
