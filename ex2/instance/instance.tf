resource "aws_instance" "web" {
  ami           = "ami-0ed52d9176c96bc18"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "terraform"
  }
}