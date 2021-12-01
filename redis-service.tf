resource kubernetes_service "redis-svc" {
  metadata  {
    labels = {
      app = "redis"
    }
    name = "redis"
    namespace = "vote"
  }
  spec  {
    port {
      
        name = "redis-service"
        port = 6379
        target_port = 6379
      }
    
    selector = {
      app = "redis"
    }
    type = "ClusterIP"
  }
}
