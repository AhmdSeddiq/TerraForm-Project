
#Module S3-Bucket_IAM-User 

#This is S3-Bucket module outputs:
output "s3_bucket_id" {
  value       = module.s3.s3_bucket_id
  description = "description"
}

output "s3_bucket_arn" {
  value       = module.s3.s3_bucket_arn
  description = "description"
}

#This is user module outputs:
output "user_name" {
  value       = module.users.user_name
  description = "IAM user name"
}

output "user_arn" {
  value       = module.users.user_arn
  description = "The ARN assigned by AWS for this user"
}

output "access_key_id" {
  value       = module.users.access_key_id
  description = "The access key ID"
}

output "secret_access_key" {
  sensitive   = true
  value       = module.users.secret_access_key
  description = "The secret access key. This will be written to the state file in plain-text"
}
# End Module S3-Bucket_IAM-User.

