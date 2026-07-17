resource "aws_vpc" "main" {
    cidr_block = "10.0.0.0/16"
    instance_tenancy = "default"
    enable_dns_hostnames = true

    tags = {
        Name = "main"
    }
  
}

resource "aws_internet_gateway" "main" {
    vpc_id = aws_vpc.main.id
    
  tags = {
    Name = "main"
  }
}


resource "aws_subnet" "public" {
  count = length(var.public_subnet_cidr)
  vpc_id = aws_vpc.main.id
  cidr_block = var.public_subnet_cidr[count.index]
  availability_zone = local.az_names[count.index]
  
}