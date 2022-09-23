resource "aws_key_pair" "key" {
  key_name   = "aws-key"
  public_key = file("./aws-key.pub")

}

resource "aws_instance" "vm" {
  ami                         = "ami-08ae71fd7f1449df1" # us-west-2
  instance_type               = "t2.small"
  key_name                    = aws_key_pair.key.key_name
  subnet_id                   = module.network.subnet_id
  vpc_security_group_ids      = [module.network.security_group_id]
  associate_public_ip_address = true

  tags = {
    Name = "vm-terraform"
  }
}

