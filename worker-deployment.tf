resource kubernetes_deployment "worker-deploy" {
  metadata = {
    "labels" = {
      "app" = "worker"
    }
    "name" = "worker"
    "namespace" = "vote"
  }
  spec = {
    "replicas" = 1
    "selector" = {
      "matchLabels" = {
        "app" = "worker"
      }
    }
    "template" = {
      "metadata" = {
        "labels" = {
          "app" = "worker"
        }
      }
      "spec" = {
        "containers" = [
          {
            "image" = "dockersamples/examplevotingapp_worker"
            "name" = "worker"
          },
        ]
      }
    }
  }
}
