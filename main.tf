
# Create a tiny EC2 instance
resource "aws_instance" "HelloEC2" {
  ami           = "ami-04b4f1a9cf54c11d0" 
  instance_type = var.instance_type

  tags = {
    Name = "EC2Instance"
  }
}
# Output the public IP address of the instance
output "instance_public_ip" {
  value = aws_instance.HelloEC2.public_ip
}
