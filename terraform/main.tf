
resource "random_id" "bucket_suffix" {
  byte_length = 8
}

module "s3_bucket" {
  source            = "../modules/s3"
  bucket_name       = "sefali-banking-app-${random_id.bucket_suffix.hex}"
  enable_versioning = true

  providers = {
    aws = aws
  }
}
