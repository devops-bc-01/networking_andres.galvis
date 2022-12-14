variable "private_subnets" {
  description = "List of private subnets inside the VPC"
  type        = list(string)
}

variable "public_subnets" {
  description = "List of public subnets inside the VPC"
  type        =  list(string)
}

variable "ami" {
  description = "The AMI to use for the instance."
  type = string
}

variable "instance_type" {
  description = "The type of instance to start."
  type = string
}

variable "azs" {
  description = "A list of availability zones in the region"
  type        = list(string)
}

variable "public_key" {
  description = "The public key material"
  type = string
}

variable "public_key_name" {
  description = "The public key name"
  type = string
}