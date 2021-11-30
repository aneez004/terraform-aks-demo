resource "kubernetes_deployment" "db-deploy" {  
metadata = {
    "labels" = {
      "app" = "db"
    }
    "name" = "db"
    "namespace" = "vote"
  }
  spec = {
    "replicas" = 1
    "selector" = {
      "matchLabels" = {
        "app" = "db"
      }
    }
    template = {
      "metadata" = {
        "labels" = {
          "app" = "db"
        }
      }
      spec = {
        "containers" = [
          {
            "env" = [
              {
                "name" = "POSTGRES_USER"
                "value" = "postgres"
              },
              {
                "name" = "POSTGRES_PASSWORD"
                "value" = "postgres"
              },
            ]
            "image" = "postgres:9.4"
            "name" = "postgres"
            "ports" = [
              {
                "containerPort" = 5432
                "name" = "postgres"
              },
            ]
            "volumeMounts" = [
              {
                "mountPath" = "/var/lib/postgresql/data"
                "name" = "db-data"
              },
            ]
          },
        ]
        "volumes" = [
          {
            "emptyDir" = {}
            "name" = "db-data"
          },
        ]
      }
    }
  }
}
