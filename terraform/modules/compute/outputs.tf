output "ecr_repository_url" {
  value = aws_ecr_repository.app.repository_url
}

output "load_balancer_url" {
  value = "http://${aws_lb.app.dns_name}"
}

output "cluster_name" {
  value = aws_ecs_cluster.main.name
}

output "service_name" {
  value = "${var.app_name}-service"
}
