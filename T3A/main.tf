module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 3.19"

  name = "my-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b"]
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets = ["10.0.3.0/24", "10.0.4.0/24"]

  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "my-vpc"
  }
}

module "web_server" {
  source = "./local-webserver"

  aws_region      = var.aws_region
  ami_id          = var.ami_id
  instance_type   = var.instance_type
  key_name        = var.key_name
  private_key_path = var.private_key_path
}
