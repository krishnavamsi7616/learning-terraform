resource "aws_instance" "web" {
  count         = length(var.instance_types)
  ami           = "ami-0ed52d9176c96bc18"
  instance_type = var.instance_types[count.index]

  tags = {
    Name = "terraform-${count.index+1}"
  }
}

variable "instance_types" {
  default = ["t3.micro","t3.small"]

}

// requirement is create number of instances of the given instance types