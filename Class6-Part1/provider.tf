terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider



module "hw5" {
  source  = "achelya81/hw5/vpc"
  version = "1.0.0"
  vpc_cidr = "172.31.1.0/16"
  subnet1_cidr = "172.31.1.0/24"
  subnet2_cidr = "172.31.2.0/24"
  subnet3_cidr = "172.31.3.0/24"
  #vpc_name = "hw5"
}