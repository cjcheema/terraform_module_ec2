variable "vpc_id" {
  description = "The ID of the VPC where the security groups will be created."
  type        = string
  default = null
}

variable "web_sg_configs" {
  description = "Map of security group configurations."
  type        = map(object({
    name = string
    port = number
  }))
}