terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
  backend "s3" {
    bucket = "breno-remote-state"
    key    = "aws-vpc/terraform.tfstate"
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

data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "breno-remote-state"
    key    = "aws-vpc"
    region = "sa-east-1"
  }
}
