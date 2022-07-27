variable "no-of-instances" {
  default = 2
}

resource "aws_instance" "web" {
  count         = var.no-of-instances
  ami           = "ami-0ed52d9176c96bc18"
  instance_type = "t3.micro"

  tags = {
    Name = "terraform-${count.index+1}"
  }
}