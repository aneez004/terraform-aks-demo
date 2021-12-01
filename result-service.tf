resource kubernetes_service "result-svc" {
  metadata  {
    labels = {
      app = "result"
    }
    name = "result"
    namespace = "vote"
  }
  spec  {
    port {
        name = "result-service"
        node_port = 31001
        port = 5001
        target_port = 80
      }
    
    selector = {
      app = "result"
    }
    type = "LoadBalancer"
  }
}
