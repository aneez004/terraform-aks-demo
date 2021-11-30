resource kubernetes_service "vote-svc" {
  metadata = {
    "labels" = {
      "app" = "vote"
    }
    "name" = "vote"
    "namespace" = "vote"
  }
  spec = {
    "ports" = [
      {
        "name" = "vote-service"
        "nodePort" = 31000
        "port" = 5000
        "targetPort" = 80
      },
    ]
    "selector" = {
      "app" = "vote"
    }
    "type" = "NodePort"
  }
}
