variable "region" {
  default     = "eu-central-1"
  type        = string
  description = "The AWS Region to deploy the resources to"
}

variable "environment" {
  description = "Environment"
  type = object({
    name = string
    id   = string
  })
}

variable "admin_users" {
  description = "List of AWS user names that can assume the Terraform Admin role."
  type        = list(string)

}