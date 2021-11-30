resource kubernetes_deployment "result-deploy" {
  metadata = {
    "labels" = {
      "app" = "result"
    }
    "name" = "result"
    "namespace" = "vote"
  }
  spec = {
    "replicas" = 1
    "selector" = {
      "matchLabels" = {
        "app" = "result"
      }
    }
    "template" = {
      "metadata" = {
        "labels" = {
          "app" = "result"
        }
      }
      "spec" = {
        "containers" = [
          {
            "image" = "dockersamples/examplevotingapp_result:before"
            "name" = "result"
            "ports" = [
              {
                "containerPort" = 80
                "name" = "result"
              },
            ]
          },
        ]
      }
    }
  }
}
