module "EC2-test" {
  source = "../../ec2"
  KEY_NAME = "${module.key.key-name}"
}

module "key" {
  source = "../../key"
  PATH_TO_PUBLIC_KEY = "my_key.pub"
}