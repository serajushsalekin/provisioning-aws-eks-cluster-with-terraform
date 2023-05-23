# aws env
region      = "us-east-1"
access_key  = ""
secret_key  = ""
environment = "dev"
# eks
#eks_cluster_name = ""

# vpc
#vpc_name = ""
vpc_cidr_block        = "10.0.0.0/16"
private_subnets_cidr  = ["10.0.1.0/24", "10.0.2.0/24"]
public_subnets_cidr   = ["10.0.3.0/24", "10.0.4.0/24"]
database_subnets_cidr = ["10.0.5.0/24", "10.0.6.0/24"]
