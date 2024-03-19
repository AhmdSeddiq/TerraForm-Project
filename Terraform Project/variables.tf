
#Region that we use in Provider
variable "region" {
  type    = string 
  default = "eu-central-1"
}


#Module EC2_instance Variables
#Ami:
variable "ami" {
    description= "to define the ami of ec2 instance"
    type= string 
}
#Instance Type:
variable "instance_type" {
    description= "to define the instance_type of ec2 instance"
    type= string 
}
#End Module EC2_instance Variables


#Module Network Variables
#VPC Variable:
variable "vpc_variable" {
  description = "VPC CIDR Block"
  type = string
}
#Public Subnet:
variable "public_subnet" {
  description = "Public Subnet"
  type = string
}
#Private Subnet:
variable "private_subnet" {
  description = "Private Subnet"
  type = string
}
#End Module Network Variables