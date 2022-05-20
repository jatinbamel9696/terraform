
variable "vpc_cidr" {
  description = "The CIDR block of the vpc"
  type        = string
  default     = "172.16.0.0/16"
}
variable "tags" {
  type        = map(any)
  description = "List of tags to be added to the resources"
  default     = {
    project     = "test",
    environment = "dev"
 }
}

variable "account_no" {
  type = number
}

variable "region_code" {
  description = "The short code for region used for naming resources"
}

variable "region" {
  description = "The region"
  type        = string
  default     = "ap-south-1"
}

variable "availability_zones" {
  type        = list(any)
  description = "The az that the resources will be launched"
  default     = []
}

variable "region_code" {
  description = "The short code for region used for naming resources"
  type        = string
  default     = "9991609696"
}

