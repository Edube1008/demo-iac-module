output "bucket_id" {
  description = "The name of the S3 bucket"
  value       = aws_s3_bucket.thisisit.id
}

output "bucket_arn" {
  description = "The ARN of the S3 bucket"
  value       = aws_s3_bucket.thisisit.arn
}

output "bucket_region" {
  description = "The AWS region where the bucket is created"
  value       = aws_s3_bucket.thisisit.region
}

output "bucket_domain_name" {
  description = "The bucket domain name"
  value       = aws_s3_bucket.thisisit.bucket_domain_name
}

output "bucket_hosted_zone_id" {
  description = "The Route 53 hosted zone ID for this bucket"
  value       = aws_s3_bucket.thisisit.hosted_zone_id
}

output "bucket_versioning" {
  description = "Versioning status of the bucket"
  value       = aws_s3_bucket_versioning.thisisit.versioning_configuration[0].status
}


output "bucket_eventbridge_notification" {
  description = "EventBridge notification status"
  value       = var.create ? aws_s3_bucket_notification.thisisit[0].eventbridge : null
}

output "bucket_lifecycle_rule" {
  description = "Lifecycle rule expiration days"
  value       = aws_s3_bucket_lifecycle_configuration.thisisit.rule[0].expiration[0].days
}
