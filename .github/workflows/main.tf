terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.71.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "ap-south-1"
}

resource "aws_vpc" "myvpc" {
  cidr_block = var.vpc-cdir
  tags = {
    Name = "${var.env}-vpc"
  }
}
resource "aws_subnet" "myvpc" {
  cidr_block = var.subnet-cdir
  vpc_id     = aws_vpc.myvpc.id
  tags = {
    Name = "${var.env}-subnet"
  }
}
