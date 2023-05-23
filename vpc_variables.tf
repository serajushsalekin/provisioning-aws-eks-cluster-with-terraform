variable "vpc_name" {
  type    = string
  default = "my-app-vpc"
}

variable "vpc_cidr_block" {
  type    = string
  default = ""
}

variable "private_subnets_cidr" {
  type    = list(string)
  default = []
}

variable "public_subnets_cidr" {
  type    = list(string)
  default = []
}

variable "database_subnets_cidr" {
  type    = list(string)
  default = []
}