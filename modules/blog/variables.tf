variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t2.micro"
}

variable "ami_filter" {
  description = "Filter criteria for selecting an Amazon Machine Image (AMI)"

  type = object({
    name  = string
    owner = string
  })

  default = {
    name  = "amzn2-ami-*-gp2"
    owner = "amazon"
  }
}

variable "environment" {
  description = "Deployment environment"

  type = object({
    name           = string
    network_prefix = string
  })
  default = {
    name           = "dev"
    network_prefix = "10.0"
  }
}

variable "asg_min" {
  description = "Minimum instance count for the ASG"
  default     = 1
}

variable "asg_max" {
  description = "Maximum instance count for the ASG"
  default     = 2
}
