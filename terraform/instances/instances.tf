variable "vpc_id" {
  description = "ID of the VPC where VMs will be deployed"
}

variable "subnet_id" {
  description = "ID of the subnet within the VPC"
}

variable "instance_count" {
  description = "Number of VM instances to deploy"
  type        = number
  default     = 1
}

variable "instance_type" {
  description = "Instance type for the VMs"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID for the VMs"
}

resource "aws_instance" "vm" {
  count         = var.instance_count
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id

  tags = {
    Name = "VM-${count.index}"
  }
}

resource "aws_security_group" "allow_ssh" {
  vpc_id = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

output "public_ips" {
  value = aws_instance.vm[*].public_ip
}