resource kubernetes_deployment "redis-deploy" {
  metadata = {
    "labels" = {
      "app" = "redis"
    }
    "name" = "redis"
    "namespace" = "vote"
  }
  spec = {
    "replicas" = 1
    "selector" = {
      "matchLabels" = {
        "app" = "redis"
      }
    }
    "template" = {
      "metadata" = {
        "labels" = {
          "app" = "redis"
        }
      }
      "spec" = {
        "containers" = [
          {
            "image" = "redis:alpine"
            "name" = "redis"
            "ports" = [
              {
                "containerPort" = 6379
                "name" = "redis"
              },
            ]
            "volumeMounts" = [
              {
                "mountPath" = "/data"
                "name" = "redis-data"
              },
            ]
          },
        ]
        "volumes" = [
          {
            "emptyDir" = {}
            "name" = "redis-data"
          },
        ]
      }
    }
  }
}
