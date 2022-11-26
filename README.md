# Explanation of terraform files
 1. main.tf: Contains the main configuration of the project. It contains the provider, the resources and the outputs.
 2. provider.tf: Contains the provider configuration. In this case, the provider is AWS.
 3. vpc.tf: Contains the configuration of the VPC.
 4. var.tf: Contains the variables that are used in the main.tf file.
 5. terraform.tfvars: Contains the values of the variables that are used in the main.tf file.2
 6. ec2.tf: Contains the configuration of the EC2 instances.

# Commands
 1. terraform init: initialize the project.
 2. terraform plan: create an execution plan.
 3. terraform apply: Is used to apply the changes required to reach the desired state of the configuration.
 4. terraform destroy: Is used to destroy the Terraform-managed infrastructure.
