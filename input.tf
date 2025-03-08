variable "vpc_cidr" {
   default = "192.168.0.0/16"
   description = "This is the vpc cidr"
   type = string
}

variable "aws_region" {
   type = string
   default = "us-east-1"
}

variable "subnet_cidrs" {
   default = ["192.168.0.0/24","192.168.1.0/24","192.168.2.0/24","192.168.3.0/24"]
   description = "This is list of all CIDR ranges for subnets."
}

variable "subnet_azs" {
   default = ["us-east-1a","us-east-1b","us-east-1a","us-east-1b"]
   description = "This is list of availability zones for the subnets"
}

variable "subnet_names" {
   default = ["app-1","app-2","db-1","db-2"]
   description = "This is list of names of subnets"
}