provider "aws" {
    region = "ap-south-1"
}
 
terraform {
    backend "s3" {
      region = "ap_south-1"
      bucket = var.bucket_name
      key = "state.tfstate"
      dynamodb_table = "statelockfile"
      encrypt = true
    }
}
