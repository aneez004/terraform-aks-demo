resource kubernetes_deployment "vote-deploy" {
  metadata = {
    "labels" = {
      "app" = "vote"
    }
    "name" = "vote"
    "namespace" = "vote"
  }
  spec = {
    "replicas" = 1
    "selector" = {
      "matchLabels" = {
        "app" = "vote"
      }
    }
    "template" = {
      "metadata" = {
        "labels" = {
          "app" = "vote"
        }
      }
      "spec" = {
        "containers" = [
          {
            "image" = "dockersamples/examplevotingapp_vote:before"
            "name" = "vote"
            "ports" = [
              {
                "containerPort" = 80
                "name" = "vote"
              },
            ]
          },
        ]
      }
    }
  }
}
