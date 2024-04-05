terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.43.0"
      region = "ap-south-1"
    }
  }
} 

provider "aws" {
  # Configuration options
}

resource "aws_instance" "web" {

    ami = "ami-007020fd9c84e18c7"
    instance_type = "t2.micro"
    count = 2

    tags = {
        key_name = "kk"
    }
}
