data "aws_availability_zones" "az" {
  state = "available"
  filter {
    name   = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}

data "aws_ami" "amazonlinux2" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["amazon"]
}

variable "default_tags" {
  default = {
    Service = "acloudguru test environment"
    Creator = "Creator"
  }
  description = "Default service and creator"
  type        = map(string)
}

variable "service_name_lowercase" {
  default     = "acloudguru"
  description = "Service name lowercase"
  type        = string
}
