
terraform {
  backend "s3" {
    bucket       = "infra-as-code-pipeline-tfstate-050797989675"
    key          = "infra-as-code-pipeline/terraform.tfstate"
    region       = "ap-south-1"
    encrypt      = true
    use_lockfile = true
  }
}
