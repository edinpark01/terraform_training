resource "aws_key_pair" "my_key" {
  key_name = "my_key"
  public_key = "${file("${var.PATH_TO_PUBLIC_KEY}")}"

}