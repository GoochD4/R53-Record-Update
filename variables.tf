//AWS Configuration
variable access_key  {}
variable secret_key {}

variable "region" {
  default = "us-east-2"
}

// Availability zones for the region
variable "az1" {
  default = "us-east-2a"
}

variable "zone_id" {}

