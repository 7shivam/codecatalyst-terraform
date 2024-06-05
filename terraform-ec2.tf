provider "aws" {
  region = "us-east-1" # Specify your desired region
}

resource "aws_instance" "example" {
  ami           = "ami-04b70fa74e45c3917" # Replace with your desired AMI ID
  instance_type = "t3.medium"

  tags = {
    Name = "TerraformExample"
  }
}

output "instance_id" {
  value = aws_instance.example.id
}

output "instance_public_ip" {
  value = aws_instance.example.public_ip
}

output "instance_ami" {
  value = aws_instance.example.ami
}
