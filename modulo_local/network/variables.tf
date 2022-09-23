variable "cidr_vpc" {
  description = "cidr block para VPC"
  type        = string
}

variable "cidr_subnet" {
  description = "cidr block para subnet"
  type        = string
}

variable "environment" {
  description = "ambiente onde o recurso vai ser utilizado"
  type        = string
}
