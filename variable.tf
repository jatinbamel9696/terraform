# Input variable definitions

variable "bucket_name" {
  description = "jatinbamel-test-teraform"
  type        = string
}

variable "tags" {
  description = "bucket_name"
  type        = map(string)
  default     = {}
}