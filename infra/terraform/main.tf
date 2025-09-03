provider "aws" {
    region = var.aws_region
}


resource "random_id" "bucket_id" {
    byte_length = 4
}


module "receipts_s3_bucket" {
    source = "./modules/s3_bucket"


    bucket_name = "receipts-${var.environment}-${random_id.bucket_id.hex}-${var.aws_region}"
    acl = "private"

    tags = {
        Environment = var.environment
        Project     = var.project_name
        ManagedBy   = "Terraform"
    }
}

