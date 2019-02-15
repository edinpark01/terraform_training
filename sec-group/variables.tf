variable "NAME" {}
variable "DESC" {}

variable "ING_FROM_PORT" {}
variable "ING_TO_PORT" {}
variable "ING_PROTOCOL" {}
variable "ING_CIDR_BLOC" { type = "list" }

variable "EG_FROM_PORT" {}
variable "EG_TO_PORT" {}
variable "EG_PROTOCOL" {}
variable "EG_CIDR_BLOC" { type = "list" }
