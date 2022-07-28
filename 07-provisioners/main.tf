resource "aws_instance" "web" {
  ami           = "ami-0ed52d9176c96bc18"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "terraform"
  }

#  provisioner "remote-exec" {
#    connection {
#      type = "ssh"
#      user = "root"
#      password = "DevOps321"
#      host = aws_instance.web.public_ip
#    }
#    inline = [
#      "uname -a"
#
#    ]
#
#
#  }
#
}

resource "null_resource" "null" {

  triggers = {
    a = timestamp()
  }

  provisioner "remote-exec" {
        connection {
          type = "ssh"
          user = "root"
          password = "DevOps321"
          host = aws_instance.web.public_ip
        }

        inline = [
          "uname"

        ]


      }

}



resource "aws_security_group" "allow_ssh" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = "vpc-0926850d764d149b5"

  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "TCP"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}
