module "EC2-test" {
  source    = "../../ec2"
  KEY_NAME  = "${module.key.key-name}"
  SEC_GROUP = ["${module.sec-group.name}"]
}

module "key" {
  source             = "../../key"
  PATH_TO_PUBLIC_KEY = "my_key.pub"
}

module "sec-group" {
  source = "../../sec-group"

  NAME = "terraform-sec-group"
  DESC = "sec-group for ssh into ec2 instance"

  ING_TO_PORT   = 22
  ING_PROTOCOL  = "tcp"
  ING_FROM_PORT = 22
  ING_CIDR_BLOC = ["0.0.0.0/0"]

  EG_FROM_PORT = 0
  EG_TO_PORT   = 0
  EG_PROTOCOL  = "-1"
  EG_CIDR_BLOC = ["0.0.0.0/0"]
}

provider "aws" {
  region = "us-east-1"
}
