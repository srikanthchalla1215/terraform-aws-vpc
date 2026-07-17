locals {
  az_names = slice(data.aws_availability_zones.available, 0,2)  
}