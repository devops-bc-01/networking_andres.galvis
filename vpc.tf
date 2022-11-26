module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "vpc-network-andres"
  cidr = "192.168.0.0/20"

  //id
  

  azs             = var.azs
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets
  


  tags = {
    Terraform = "true"
    Environment = "dev"
    Name = "vpc-network-andres"
  }
}


