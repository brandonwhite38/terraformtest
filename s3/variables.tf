variable "aws_region" {
  description = "The AWS region to use to create resources."
  default     = "us-east-1"
}

variable "bucket-prefix" {
  type        = string
  description = "(required since we are not using 'bucket') Creates a unique bucket name beginning with specified prefix. Conflicts with bucket"
  default     = "my-s3bucket-"
}

variable "tags" {
  type        = map(any)
  description = "(Optional) A mapping of tags to assign to the bucket."
  default = {
    environment = "DEV"
    terraform   = "true"
  }
}

variable "versioning" {
  type        = string
  description = "(Optional) A state of versioning"
  default     = "Enabled"
}

variable "acl" {
  type        = string
  description = "Defaults to private"
  default     = "private"
}