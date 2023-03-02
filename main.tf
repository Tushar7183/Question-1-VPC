resource "aws_vpc" "vpc" {
    cidr_block = var.vpc_cidr
    tags = {
      "Name" = var.vpc_name
      "Owner" = "tushar.bansal@cloudeq.com"
    }
  
}

resource "aws_subnet" "sub1" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "10.0.1.0/24"
    tags = {
      Name = "Tush-sub1"
    }
}

resource "aws_subnet" "sub2" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "10.0.2.0/24"
    tags = {
      Name = "Tush-sub2"
    }
}



resource "aws_instance" "sub1_instace1" {
  ami           = "ami-0c2b0d3fb02824d92"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.sub1.id}"
  tags = {
    Name = "sub1"
    Owner = "tushar.bansal@cloudeq.com"
  }
    volume_tags = {
    Name = "sub1_instance1"
    Owner = "tushar.bansal@cloudeq.com"
  }
   
}

resource "aws_instance" "sub1_instace2" {
  ami           = "ami-0dfcb1ef8550277af"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.sub1.id}"
  tags = {
    Name = "sub1"
    Owner = "tushar.bansal@cloudeq.com"
  }
    volume_tags = {
    Name = "sub1_instance2"
    Owner = "tushar.bansal@cloudeq.com"
  }
   
}

resource "aws_instance" "sub2_instace1" {
  ami           = "ami-0c2b0d3fb02824d92"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.sub2.id}"
  tags = {
    Name = "sub2"
    Owner = "tushar.bansal@cloudeq.com"
  }
    volume_tags = {
    Name = "sub2_instance1"
    Owner = "tushar.bansal@cloudeq.com"
  }
   
}


resource "aws_instance" "sub2_instace2" {
  ami           = "ami-0dfcb1ef8550277af"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.sub2.id}"
  tags = {
    Name = "sub2"
    Owner = "tushar.bansal@cloudeq.com"
  }
    volume_tags = {
    Name = "sub2_instance2"
    Owner = "tushar.bansal@cloudeq.com"
  }
   
}



