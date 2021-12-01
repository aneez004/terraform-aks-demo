resource kubernetes_deployment "redis-deploy" {
  metadata  {
    labels = {
      app = "redis"
    }
    name = "redis"
    namespace = "vote"
  }
  spec  {
    replicas = 1
    selector  {
      match_labels = {
        app = "redis"
      }
    }
    template  {
      metadata  {
        labels = {
          app = "redis"
        }
      }
      spec  {
        container {
          
            image = "redis:alpine"
            name = "redis"
            port {
              
                container_port = 6379
                name = "redis"
              }
            
            volume_mount {
              
                mount_path = "/data"
                name = "redis-data"
              }
            
          }
        
        volume {
          
            empty_dir  {
              medium = ""
            }
            name = "redis-data"
          }
        
      }
    }
  }
}
