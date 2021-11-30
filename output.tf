output "voting_ip" {
  value = kubernetes_service.vote.status.0.load_balancer.0.ingress.0.ip
}

output "result_ip" {
  value = kubernetes_service.result.status.0.load_balancer.0.ingress.0.ip
}
