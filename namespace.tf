resource "kubernetes_namespace" "vote" {
  metadata  {
    name = "vote"
  }
}


