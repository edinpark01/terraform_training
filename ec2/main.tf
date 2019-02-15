
resource "aws_instance" "ubuntu_server" {
  ami = "ami-0ac019f4fcb7cb7e6"
  instance_type = "t2.micro"
  key_name = "${var.KEY_NAME}"

}

