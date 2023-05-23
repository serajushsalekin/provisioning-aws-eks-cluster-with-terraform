module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.13.1"

  cluster_name    = local.eks_cluster_name
  cluster_version = "1.25"

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  cluster_endpoint_private_access = true
  cluster_endpoint_public_access  = true

  create_kms_key            = false
  cluster_encryption_config = {}

  tags = {
    Name = "${var.environment}-${local.eks_cluster_name}"
  }

  eks_managed_node_groups = {
    eks-node-1 = {
      name = "worker-node-group-1"

      instance_types = ["t3.small"]

      min_size     = 1
      max_size     = 3
      desired_size = 2
    }
  }
}

output "eks-name" {
  value = module.eks.cluster_name
}

output "eks-id" {
  value = module.eks.cluster_id
}