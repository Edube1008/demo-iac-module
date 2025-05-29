variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "lifecycle_days" {
  description = "Number of days before objects are expired"
  type        = number
  default     = 30
}

variable "bucket_prefix" {
  description = "Creates a unique bucket name beginning with the specified prefix"
  type        = string
  default     = ""

}

variable "versioning" {
  description = "Map containing versioning configuration"
  type        = bool
  default     = false

}

variable "tags" {
  description = "A map of mandatorytags to assign to the bucket"
  type        = map(string)
  default = {
    Env              = "Dev"
    ApplicationName  = "Tina"
    APMID            = ""
    SupportStatus    = ""
    BillingIndicator = ""
    DataSensitivity  = ""
    Compliance       = ""

  }
}

variable "create" {
  description = "Whether to create this resource or not?"
  type        = bool
  default     = true
}

variable "Enable_eventbridge" {
  description = "Enable or disable Amazon Eventbridge notifications"
  type        = bool
  default     = true
}

variable "enable_logging" {
  description = "Enable or disable server access logging"
  type        = bool
  default     = false

}

variable "enable_bucket" {
  description = "enable or disable bucket"
  type        = bool
  default     = false #Set default value
}
