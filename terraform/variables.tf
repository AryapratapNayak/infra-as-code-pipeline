variable "app_name" {
  type    = string
  default = "zero-touch"
}

variable "deploy_service" {
  description = "Enable ECS service after the application image is pushed to ECR."
  type        = bool
  default     = false
}

variable "image_tag" {
  type    = string
  default = "latest"
}

variable "enable_alb" {
  description = "Whether to create the Application Load Balancer"
  type        = bool
  default     = false
}
