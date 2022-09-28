data "aws_vpc" "vpc-data" {
  cidr_block = "10.0.0.0/16"
}


resource "aws_subnet" "subnet" {
  vpc_id     = data.aws_vpc.vpc-data.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "subnet-terraform"
  }
}
