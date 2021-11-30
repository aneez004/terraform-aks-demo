resource kubernetes_service "redis-svc" {
  metadata = {
    "labels" = {
      "app" = "redis"
    }
    "name" = "redis"
    "namespace" = "vote"
  }
  spec = {
    "ports" = [
      {
        "name" = "redis-service"
        "port" = 6379
        "targetPort" = 6379
      },
    ]
    "selector" = {
      "app" = "redis"
    }
    "type" = "ClusterIP"
  }
}
