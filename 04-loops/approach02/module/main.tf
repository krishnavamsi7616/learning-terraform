resource "aws_instance" "web" {
  ami           = "ami-0ed52d9176c96bc18"
  instance_type = "t3.micro"

  tags = {
    Name = "terraform"
  }
}

variable "nametag" {}