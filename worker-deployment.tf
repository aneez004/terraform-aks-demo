resource kubernetes_deployment "worker-deploy" {
  metadata  {
    labels = {
      app = "worker"
    }
    name = "worker"
    namespace = "vote"
  }
  spec  {
    replicas = 1
    selector  {
      match_labels = {
        app = "worker"
      }
    }
    template  {
      metadata  {
        labels = {
          app = "worker"
        }
      }
      spec  {
        container {
          
            image = "dockersamples/examplevotingapp_worker"
            name = "worker"
          }
        
      }
    }
  }
}
