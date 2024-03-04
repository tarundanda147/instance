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

variable  "bucket_name" {
  description = "enter the bucket name"
  type = string
}
