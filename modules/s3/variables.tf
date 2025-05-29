variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "tags" {
  description = "Tags to apply to the bucket"
  type        = map(string)
  default     = {}
}

variable "lifecycle_days" {
  description = "Number of days before objects expire"
  type        = number
  default     = 30
}

variable "versioning" {
  description = "Enable versioning"
  type        = bool
  default     = false
}

variable "enable_eventbridge" {
  description = "Enable EventBridge notifications"
  type        = bool
  default     = false
}

variable "enable_logging" {
  description = "Enable S3 access logging"
  type        = bool
  default     = false
}

variable "log_bucket_name" {
  description = "The bucket to store access logs"
  type        = string
  default     = ""
}

variable "bucket_prefix" {
  description = "Prefix for log files"
  type        = string
  default     = ""
}

variable "enable_object_lock" {
  description = "Enable object lock configuration (must be set at bucket creation)"
  type        = bool
  default     = false
}

variable "object_lock_mode" {
  description = "Object lock retention mode ('GOVERNANCE' or 'COMPLIANCE')"
  type        = string
  default     = "GOVERNANCE"
}

variable "object_lock_days" {
  description = "Default retention days for object lock"
  type        = number
  default     = 1
}
