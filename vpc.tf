module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "vpc-network-andres"
  cidr = "192.168.0.0/20"
  

  azs             = var.azs
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets
  


  tags = {
    Terraform = "true"
    Environment = "dev"
    Name = "vpc-network-andres"
  }
}

module "vpc_security_group" {
  source = "terraform-aws-modules/security-group/aws"

  name        = "vpc_security_group"
  description = "Security group for VPC"
  vpc_id      = module.vpc.vpc_id

  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules       = ["ssh-tcp", "all-icmp"]
}