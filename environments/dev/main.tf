terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source               = "../../modules/vpc"
  project_name         = var.project_name
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
}

module "alb" {
  source       = "../../modules/alb"
  project_name = var.project_name
  vpc_id       = module.vpc.vpc_id
  subnet_ids   = module.vpc.public_subnet_ids
}

module "ecr" {
  source       = "../../modules/ecr"
  project_name = var.project_name
}

module "ecs" {
  source              = "../../modules/ecs"
  project_name        = var.project_name
  vpc_id              = module.vpc.vpc_id
  subnet_ids          = module.vpc.public_subnet_ids
  alb_target_group_arn = module.alb.target_group_arn
  alb_security_group_id = module.alb.security_group_id
  ecr_repository_uri  = module.ecr.repository_uri
}

module "cicd" {
  source             = "../../modules/cicd"
  project_name       = var.project_name
  aws_region         = var.aws_region
  ecr_repository_uri = module.ecr.repository_uri
  ecs_cluster_name   = module.ecs.cluster_name
  ecs_service_name   = module.ecs.service_name
  github_owner       = var.github_owner
  github_repo        = var.github_repo
  github_branch      = var.github_branch
}
