resource kubernetes_service "vote-svc" {
  metadata  {
    labels = {
      "app" = "vote"
    }
    name = "vote"
    namespace = "vote"
  }
  spec  {
    port {
      
        name = "vote-service"
        node_port = 31000
        port = 5000
        target_port = 80
      }
    
    selector = {
      app = "vote"
    }
    type = "LoadBalancer"
  }
}
