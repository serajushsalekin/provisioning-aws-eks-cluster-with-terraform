locals {
  eks_cluster_name = var.eks_cluster_name
}

data "aws_availability_zones" "azs" {}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "4.0.1"

  name             = var.vpc_name
  cidr             = var.vpc_cidr_block
  private_subnets  = var.private_subnets_cidr
  public_subnets   = var.public_subnets_cidr
  database_subnets = var.database_subnets_cidr
  azs              = slice(data.aws_availability_zones.azs.names, 0, 2)

  enable_dns_hostnames   = true
  enable_nat_gateway     = true
  single_nat_gateway     = true
  one_nat_gateway_per_az = false

  tags = {
    "kubernetes.io/cluster/${local.eks_cluster_name}" = "shared"
  }

  public_subnet_tags = {
    "kubernetes.io/cluster/${local.eks_cluster_name}" = "shared"
    "kubernetes.io/role/elb"                          = 1
  }

  private_subnet_tags = {
    "kubernetes.io/cluster/${local.eks_cluster_name}" = "shared"
    "kubernetes.io/role/internal-elb"                 = 1
  }
}

