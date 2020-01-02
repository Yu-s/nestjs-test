resource "aws_security_group" "tfer--alb-002D-fargate-002D-test_sg-002D-00c6ee7a09003c07f" {
  description = "load-balancer-wizard-1 created on 2019-12-28T11:13:11.796+09:00"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["42.144.66.8/32", "203.179.90.205/32"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "alb-fargate-test"

  tags = {
    Name = "alb"
  }

  vpc_id = "vpc-04f3b83abd7739edb"
}

resource "aws_security_group" "tfer--db_sg-002D-0439ef61e399e14fc" {
  description = "Created by RDS management console"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.0.2.0/24", "10.0.3.0/24"]
    description = "from Public Subnet"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  name = "db"

  tags = {
    Name = "rds"
  }

  vpc_id = "vpc-04f3b83abd7739edb"
}

resource "aws_security_group" "tfer--default_sg-002D-06198762fe2ef9317" {
  description = "default VPC security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port = "0"
    protocol  = "-1"
    self      = "true"
    to_port   = "0"
  }

  name   = "default"
  vpc_id = "vpc-04f3b83abd7739edb"
}

resource "aws_security_group" "tfer--default_sg-002D-4b192238" {
  description = "default VPC security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port = "0"
    protocol  = "-1"
    self      = "true"
    to_port   = "0"
  }

  name   = "default"
  vpc_id = "vpc-b9cecbde"
}

resource "aws_security_group" "tfer--launch-002D-wizard-002D-1_sg-002D-0f59facf7e522a3b0" {
  description = "launch-wizard-1 created 2019-12-28T13:21:13.365+09:00"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["203.179.90.205/32", "42.144.66.8/32"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "launch-wizard-1"

  tags = {
    Name = "踏み台"
  }

  vpc_id = "vpc-04f3b83abd7739edb"
}

resource "aws_security_group" "tfer--nestjs-002D-api_sg-002D-0b00088e77cda715b" {
  description = "2019-12-28T05:11:56.692Z"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.0.0.0/16"]
    from_port   = "4000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "4000"
  }

  name = "nestjs-api"

  tags = {
    Name = "nestjs-api"
  }

  vpc_id = "vpc-04f3b83abd7739edb"
}
