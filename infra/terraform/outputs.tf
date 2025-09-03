output "receipt_bucket_id" {
    description = "The ID of the S3 bucket for storing receipts"
    value       = module.receipts_s3_bucket.s3_bucket_id
}