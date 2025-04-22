# Provider configuration
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

}

provider "aws" {
  region = "us-east-1"
}

# Create a tiny EC2 instance
resource "aws_instance" "HelloEC2" {
  ami           = "ami-04b4f1a9cf54c11d0" 
  instance_type = "t2.micro"

  tags = {
    Name = "EC2Instance"
  }
}
# Output the public IP address of the instance
output "instance_public_ip" {
  value = aws_instance.HelloEC2.public_ip
}
