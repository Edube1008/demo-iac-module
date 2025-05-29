output "bucket_id" {
  description = "The name of the bucket"
  value       = aws_s3_bucket.this.id
}

output "bucket_arn" {
  description = "The ARN of the bucket"
  value       = aws_s3_bucket.this.arn
}

output "bucket_region" {
  description = "The AWS region this bucket was created in"
  value       = aws_s3_bucket.this.region
}

output "bucket_domain_name" {
  description = "The bucket domain name"
  value       = aws_s3_bucket.this.bucket_domain_name
}

output "bucket_regional_domain_name" {
  description = "The bucket regional domain name"
  value       = aws_s3_bucket.this.bucket_regional_domain_name
}

output "logging_target_bucket" {
  description = "The bucket where access logs are stored"
  value       = try(aws_s3_bucket_logging.this[0].target_bucket, null)
}

output "logging_target_prefix" {
  description = "The prefix for access log objects"
  value       = try(aws_s3_bucket_logging.this[0].target_prefix, null)
}
