variable "vpc_tags" {
    type = map
    default = {}
  
}

variable "igw_tags" {
    type = map
    default = {}

}


variable "project" {
    type = string
}

variable "environment" {
    type = string

}


variable "public_subnet_cidr" {
    type = list
    default = ["10.0.1.0/24", "10.0.2.0/24"]  
}


variable "public_subnet_tags" {
    default = {}
    type = map
}