resource kubernetes_deployment "vote-deploy" {
  metadata  {
    labels = {
      app = "vote"
    }
    name = "vote"
    namespace = "vote"
  }
  spec  {
    replicas = 1
    selector  {
      match_labels = {
        app = "vote"
      }
    }
    template  {
      metadata  {
        labels = {
          "app" = "vote"
        }
      }
      spec  {
        container {
          
            image = "dockersamples/examplevotingapp_vote:before"
            name = "vote"
            port {
              
                container_port = 80
                name = "vote"
              }
            
          }
        
      }
    }
  }
}
