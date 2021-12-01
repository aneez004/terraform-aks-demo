output "voting_ip" {
  value = kubernetes_service.vote-svc.status.0.load_balancer.0.ingress.ip
}

output "result_ip" {
  value = kubernetes_service.result-svc.status.0.load_balancer.0.ingress.ip
}
