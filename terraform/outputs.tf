output "ecr_repository_url" {
  value = module.compute.ecr_repository_url
}

output "load_balancer_url" {
  value = module.compute.load_balancer_url
}

output "ecs_cluster_name" {
  value = module.compute.cluster_name
}

output "ecs_service_name" {
  value = module.compute.service_name
}
