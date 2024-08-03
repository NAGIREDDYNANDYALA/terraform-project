# Create Resource for Development Environment

module "dev-vpc" {
  source = "../module/vpc"

  ENVIRONMENT = var.Env
  AWS_REGION  = var.AWS_REGION
}

module "dev-instances" {
  source = "../module/instances"

  ENVIRONMENT    = var.Env
  AWS_REGION     = var.AWS_REGION
  VPC_ID         = module.dev-vpc.my_vpc_id
  PUBLIC_SUBNETS = module.dev-vpc.public_subnets
}

provider "aws" {
  region = var.AWS_REGION
}