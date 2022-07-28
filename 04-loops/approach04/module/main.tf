resource "aws_instance" "web" {
  count = var.instance_count
  ami           = "ami-0ed52d9176c96bc18"
  instance_type = var.instance_type

  tags = {
    Name = "terraform"
  }
}

variable "instance_type" {}
variable "instance_count" {}
