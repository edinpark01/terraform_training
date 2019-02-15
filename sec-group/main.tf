resource "aws_security_group" "sec-group" {
  name        = "${var.NAME}"
  description = "${var.DESC}"

  ingress {
    from_port   = "${var.ING_FROM_PORT}"
    protocol    = "${var.ING_PROTOCOL}"
    to_port     = "${var.ING_TO_PORT}"
    cidr_blocks = "${var.ING_CIDR_BLOC}"
  }

  egress {
    from_port   = "${var.EG_FROM_PORT}"
    protocol    = "${var.EG_PROTOCOL}"
    to_port     = "${var.EG_TO_PORT}"
    cidr_blocks = "${var.EG_CIDR_BLOC}"
  }
}
