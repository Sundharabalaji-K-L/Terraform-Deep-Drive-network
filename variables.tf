variable "region" {
  type        = string
  description = "AWS Region to use"
  default     = "us-east-1"
}

variable "prefix" {
  type        = string
  description = "Prefix to all resources in this module"
  default     = "globo-web-app"
}

variable "cidr_block" {
  type        = string
  description = "CIDR block for the VPC"
  default     = "10.0.14.0"
}

variable "environment" {
  type        = string
  description = "(optional) environment to all the resources need to be created"
  default     = "dev"
}

variable "public_subnets" {
  type        = map(string)
  description = "map of public subnets to create"

}

variable "billing_code" {
  type        = string
  description = "Requrired billing code"
} 