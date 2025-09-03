variable "aws_region" {
    description = "The AWS region where resources will be created"
    type = string
    default = "eu-central-1"
}

variable "invoice_bucket_name" {
    description = "The desired name for the S3 bucket that will store invoices-receipts"
    type = string
    default = "invoice-uploads-unique"
}

variable "project_name" {
    description = "The name of the project."
    type = string
    default = "InvoiceApp"
}

variable "environment" {
    description = "The deployment environment (e.g., 'dev', 'staging', 'prod')."
    type = string
    default = "dev"
}