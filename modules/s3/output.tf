output "s3_bucket_name" {
  description = "The name of the S3 bucket"
  value       = aws_s3_bucket.banking_app.bucket
}

output "s3_bucket_arn" {
  description = "The ARN of the S3 bucket"
  value       = aws_s3_bucket.banking_app.arn
}

output "s3_bucket_website_endpoint" {
  description = "The website endpoint of the S3 bucket"
  value       = aws_s3_bucket_website_configuration.website.website_endpoint
}

output "s3_bucket_versioning_status" {
  description = "The versioning status of the S3 bucket"
  value       = aws_s3_bucket_versioning.versioning.versioning_configuration[0].status
}
