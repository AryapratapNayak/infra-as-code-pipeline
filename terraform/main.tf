module "networking" {
  source   = "./modules/networking"
  app_name = var.app_name
}

module "security" {
  source   = "./modules/security"
  app_name = var.app_name
  vpc_id   = module.networking.vpc_id
}

module "compute" {
  source             = "./modules/compute"
  app_name           = var.app_name
  public_subnet_ids  = module.networking.public_subnet_ids
  ecs_security_group = module.security.ecs_security_group_id
  execution_role_arn = module.security.execution_role_arn
  alb_security_group = module.security.alb_security_group_id
  vpc_id             = module.networking.vpc_id
  deploy_service     = var.deploy_service
  image_tag          = var.image_tag
}

module "monitoring" {
  source         = "./modules/monitoring"
  app_name       = var.app_name
  cluster_name   = module.compute.cluster_name
  service_name   = module.compute.service_name
  deploy_service = var.deploy_service
}
