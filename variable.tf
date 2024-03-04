variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
  //default     = "ami-03bb6d83c60fc5f7c"
}

variable "instance_type" {
  description   = "The type of EC2 instance"
  type          = string
  //default = "t2.micro"
}

variable "vpc_id" {
  description = "the default VPC of the region"
  type = string
}
variable "port_in" {
  description = "SSH port value"
  type = number
}

variable "port_out" {
  description = "SSH port value"
  type = number
}
variable "cidr_block" {
  description = "The CIDR range"
  type = string
}
