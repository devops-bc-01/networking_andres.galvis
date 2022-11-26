//create ec2 instance
module "ec2" {
    source  = "terraform-aws-modules/ec2-instance/aws"
    version = "~> 3.0"
    count   = length(var.private_subnets)+length(var.public_subnets)

    depends_on = [
      module.vpc
    ]
    ami           = var.ami
    instance_type = var.instance_type
    

    subnet_id = concat(module.vpc.private_subnets, module.vpc.public_subnets)[count.index]

    name = "ec2-instance-${count.index + 1}"

    tags = {
        Name = "ec2-instance-andres-${count.index}"
    }

}