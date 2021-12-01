resource kubernetes_deployment "result-deploy" {
  metadata  {
    labels = {
      app = "result"
    }
    name = "result"
    namespace = "vote"
  }
  spec  {
    replicas = 1
    selector  {
      match_labels = {
        app = "result"
      }
    }
    template  {
      metadata  {
        labels = {
          "app" = "result"
        }
      }
      spec  {
        container  {
          
            image = "dockersamples/examplevotingapp_result:before"
            name = "result"
            port {
              
                container_port = 80
                name = "result"
              }
            
          }
        
      }
    }
  }
}
