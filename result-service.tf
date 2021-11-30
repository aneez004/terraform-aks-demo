resource kubernetes_service "result-svc" {
  metadata = {
    "labels" = {
      "app" = "result"
    }
    "name" = "result"
    "namespace" = "vote"
  }
  spec = {
    "ports" = [
      {
        "name" = "result-service"
        "nodePort" = 31001
        "port" = 5001
        "targetPort" = 80
      },
    ]
    "selector" = {
      "app" = "result"
    }
    "type" = "NodePort"
  }
}
