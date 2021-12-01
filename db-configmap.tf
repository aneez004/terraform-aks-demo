resource "kubernetes_config_map" "cm" {
  metadata {
    name = "db-configmap"
    namespace = "vote"
  }

  data = {
    POSTGRES_USER           = "postgres"
    POSTGRES_PASSWORD         = "postgres"
  }
  }