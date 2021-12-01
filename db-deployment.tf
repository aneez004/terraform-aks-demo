resource "kubernetes_deployment" "db-deploy" {  
metadata  {
    labels = {
      "app" = "db"
    }
    name = "db"
    namespace = "vote"
  }
spec  {
    replicas = 1
    selector  {
      match_labels = {
        app = "db"
      }
    }
    template  {
      metadata  {
        labels = {
          app = "db"
        }
      }
      spec  {
        container  {
          
            #env { 
              
             #   name = "POSTGRES_USER"
              #  value = "postgres"
              

           
          # name = "POSTGRES_PASSWORD"
           #     value = "postgres"
                
            #  }
            env_from {
             config_map_ref {
                name = "db-configmap"
        }
      }
            
            image = "postgres:9.4"
            name = "postgres"
            port  {
              
                container_port = 5432
                name = "postgres"
              }
            
            volume_mount {
              
                mount_path = "/var/lib/postgresql/data"
                name = "db-data"
              }
            
          }
        
        volume  {
          
            empty_dir {
              medium = "" 
              }
            name = "db-data"
          }
        
      }
    }
  }
  depends_on = [
    kubernetes_config_map.cm
  ]
}
