terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
  backend "s3" {
    bucket = "breno-remote-state"
    key    = "aws-vm-modulo-local/terraform.tfstate"
    region = "sa-east-1"

  }
}

provider "aws" {
  region = "sa-east-1"

  default_tags {
    tags = {
      owner      = "breno"
      managed-by = "terraform"
    }
  }
}

module "network" {
  source = "./network"

  cidr_vpc    = "10.0.0.0/16"
  cidr_subnet = "10.0.1.0/24"
  environment = "Desenvolvimento"
}