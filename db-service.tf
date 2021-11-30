resource kubernetes_service "db-svc" {
  metadata = {
    "labels" = {
      "app" = "db"
    }
    "name" = "db"
    "namespace" = "vote"
  }
  spec = {
    "ports" = [
      {
        "name" = "db-service"
        "port" = 5432
        "targetPort" = 5432
      },
    ]
    "selector" = {
      "app" = "db"
    }
    "type" = "ClusterIP"
  }
}
