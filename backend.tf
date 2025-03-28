resource "aws_s3_bucket" "terraform_state" {
  bucket_prefix = "sefali-terraform-state-"  # Generates a unique bucket name dynamically
  force_destroy = true  # Optional: Allows bucket deletion if necessary

  tags = {
    Name        = "Terraform State Bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_versioning" "terraform_state" {
  bucket = aws_s3_bucket.terraform_state.id
  versioning_configuration {
    status = "Enabled"
  }
}

output "terraform_state_bucket" {
  value = aws_s3_bucket.terraform_state.id
}
