output "public-ip" {
  value = "${aws_instance.ubuntu_server.public_ip}"
}