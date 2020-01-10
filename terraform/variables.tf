variable "aws_key_path" {}
variable "aws_key_name" {}

variable "aws_region" {
    description = "VPC Region"
    default = "eu-west-2"
}

variable "amis" {
    description = "AMIs by region"
    default = {
        eu-west-2 = "ami-0eab3a90fc693af19" #CentOS 7 AMI
    }
}

variable "instance_type" {
    description = "Type for EC2 instances"
    default = "t3.micro"
}

variable "vpc_cidr" {
    description = "CIDR for the whole VPC"
    default = "10.0.0.0/16"
}

variable "public_cidr" {
    description = "Public subnet CIDR"
    default = "10.0.0.0/24"
}

variable "private_cidr" {
    description = "Prviate subnet CIDR"
    default = "10.0.1.0/24"
}