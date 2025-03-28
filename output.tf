output "bucket_name" {
  description = "The name of the S3 bucket"
  value       = aws_s3_bucket.banking_app.id
}

output "website_url" {
  description = "The website URL for the S3 bucket"
  value       = aws_s3_bucket.banking_app.website_endpoint
}
