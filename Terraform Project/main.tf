
#Use Module S3-Bucket_IAM-User 
#Module S3 Bucket: 
module s3 {
  source = "./Modules/S3-Bucket_IAM-User/S3_bucket"
}

#Module Users:
module users {
    source = "./Modules/S3-Bucket_IAM-User/Users"
}


#Use Module EC2_instance
module "ec2-module" {
  source = "./Modules/EC2_instance"
  ami= var.ami
  instance_type= var.instance_type
  public_subnet_ec2= module.network.public
  
}


#Use Module Network
module "network" {
  source="./Modules/Network"
  private_subnet = var.private_subnet
  public_subnet = var.public_subnet
  vpc_variable = var.vpc_variable
}