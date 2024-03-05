variable "key_name" {
  description = "The name of the SSH key pair to use for the EC2 instances"
}

variable "security_group_ids" {
  description = "A list of security group IDs to associate with the EC2 instances"
}

variable "vpc_id" {
  description = "The ID of the VPC where the EC2 instances will be launched"
}

variable "subnet_id" {
  description = "The ID of the subnet where the EC2 instances will be launched"
}

variable "instance_count" {
  description = "The number of EC2 instances to launch"
  type        = number
}

variable "instance_type" {
  description = "The type of EC2 instance to launch"
}

variable "ami_id" {
  description = "The ID of the Amazon Machine Image (AMI) to use for the EC2 instances"
}