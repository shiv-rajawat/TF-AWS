## This files declares all the parameters used for setting up configurations for dev. The values are given through the *.tfvars file.

variable "cidr_block"{
  type = "string"
  description = "The CIDR block for the VPC."
}

variable "access_key" {
  type = "string"
  }

variable "secret_key" {
  type = "string"
  }

variable "instance_tenancy"{
  type = "string"
  description = "The instance tenacy of resources within the VPC."
}

variable "vpc_name"{
  type = "string"
  description = "The name of the VPC."
}

variable "subnet_1_cidr_block"{
  type = "string"
  description = "The CIDR block for the subnet1. It must be a subset of VPC's CIDR block."
}

variable "subnet_2_cidr_block"{
  type = "string"
  description = "The CIDR block for the subnet2. It must be a subset of VPC's CIDR block."
}

variable "subnet_3_cidr_block"{
  type = "string"
  description = "The CIDR block for the subnet3. It must be a subset of VPC's CIDR block."
}

variable "subnet_1_name"{
  type = "string"
  description = "The name of the subnet1."
}

variable "subnet_2_name"{
  type = "string"
  description = "The name of the subnet2."
}

variable "subnet_3_name"{
  type = "string"
  description = "The name of the subnet3."
}

variable "subnet_1_availability_zone"{
  type = "string"
  description = "The availability zone for creating subnet1. If more than one subnets are required, this variable can be changed to a type 'List' and accordingly changes to be made in *.tfvars file."
}

variable "subnet_2_availability_zone"{
  type = "string"
  description = "The availability zone for creating subnet1. If more than one subnets are required, this variable can be changed to a type 'List' and accordingly changes to be made in *.tfvars file."
}

variable "subnet_3_availability_zone"{
  type = "string"
  description = "The availability zone for creating subnet1. If more than one subnets are required, this variable can be changed to a type 'List' and accordingly changes to be made in *.tfvars file."
}

variable "ec2-1-name"{
  type = "string"
  description = "The name for 1st ec2"
}
