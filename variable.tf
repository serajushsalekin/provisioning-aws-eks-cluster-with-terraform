variable "region" {
  type = string
}

variable "access_key" {
  type = string
}

variable "secret_key" {
  type = string
}

variable "eks_cluster_name" {
  type    = string
  default = "my-eks-cluster"
}

variable "environment" {}