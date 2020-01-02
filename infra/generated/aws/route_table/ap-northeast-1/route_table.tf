resource "aws_route_table" "tfer--rtb-002D-0e226bda9524c6b46" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-0eef9775bee330cd2"
  }

  tags = {
    Name = "fargate-test/Private"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-002D-04f3b83abd7739edb_id}"
}

resource "aws_route_table" "tfer--rtb-002D-0e7b3db92808b9c9d" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-0eef9775bee330cd2"
  }

  tags = {
    Name = "fargate-test/Public"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-002D-04f3b83abd7739edb_id}"
}

resource "aws_route_table" "tfer--rtb-002D-b067f5d6" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-da5a5abe"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-002D-b9cecbde_id}"
}
