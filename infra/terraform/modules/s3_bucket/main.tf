resource "aws_s3_bucket" "this" {
    bucket = var.bucket_name

    tags = merge(
        var.tags,
        {
            "Name" = var.bucket_name
        }
    )
}

resource "aws_s3_bucket_ownership_controls" "this" {
    bucket = aws_s3_bucket.this.id

    rule {
        object_ownership = "BucketOwnerPreferred"
    }
}

resource "aws_s3_bucket_acl" "this" {
    depends_on = [aws_s3_bucket_ownership_controls.this]

    bucket = aws_s3_bucket.this.id
    acl    = var.acl
}