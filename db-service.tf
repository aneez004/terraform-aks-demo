resource kubernetes_service "db-svc" {
  metadata  {
    labels = {
      app = "db"
    }
    name = "db"
    namespace = "vote"
  }
  spec  {
    port  {
      
        name = "db-service"
        port = 5432
        target_port = 5432
      }
    
    selector = {
      app = "db"
    }
    type = "ClusterIP"
  }
}
