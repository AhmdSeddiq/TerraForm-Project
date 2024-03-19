
#This is Network Variables

#VPC
variable "vpc_variable" {
  description = "VPC CIDR Block"
  type = string
}

#Public Subnet
variable "public_subnet" {
  description = "Public Subnet"
  type = string
}

#Private Subnet
variable "private_subnet" {
  description = "Private Subnet"
  type = string
}