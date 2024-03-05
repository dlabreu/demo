variable key_name {
    default = "id_rsa.pub"
}

variable security_group_ids {
    default = "sg-09b73fd8672058b75"
}
variable vpc_id : "vpc-09d79c26d86172a1a"
variable subnet_id: "subnet-04837fbe02da83c4d"
variable instance_count: "2"
variable instance_type: "t2.micro"
variable ami_id: "ami-0134dde2b68fe1b07"