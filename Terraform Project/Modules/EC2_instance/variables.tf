

#This is EC2 VARIABLES
#ami
variable "ami" {
    description= "to define the ami of ec2 instance"
    type= string 
}

#Instance Type
variable "instance_type" {
    description= "to define the instance_type of ec2 instance"
    type= string 
}

#Public EC2 Subnet
variable "public_subnet_ec2" {
    description= "to define public subnet on ec2"
    type= string 
}


