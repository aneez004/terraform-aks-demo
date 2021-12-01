resource "kubernetes_config_map" "cm" {
  metadata {
    name = "db-configmap"
  }

  data = {
    POSTGRES_USER           = "postgres"
    POSTGRES_PASSWORD         = "postgres"
  }
  }