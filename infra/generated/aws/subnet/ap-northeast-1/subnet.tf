resource "aws_subnet" "tfer--subnet-002D-008d1b86200d30812" {
  assign_ipv6_address_on_creation = "false"
  cidr_block                      = "10.0.2.0/24"
  map_public_ip_on_launch         = "false"

  tags = {
    Name = "fargate-test/Public"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-002D-04f3b83abd7739edb_id}"
}

resource "aws_subnet" "tfer--subnet-002D-0250822fb6f465ba5" {
  assign_ipv6_address_on_creation = "false"
  cidr_block                      = "10.0.3.0/24"
  map_public_ip_on_launch         = "false"

  tags = {
    Name = "fargate-test/Public"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-002D-04f3b83abd7739edb_id}"
}

resource "aws_subnet" "tfer--subnet-002D-04a366ce1a6b5ee9f" {
  assign_ipv6_address_on_creation = "false"
  cidr_block                      = "10.0.1.0/24"
  map_public_ip_on_launch         = "false"

  tags = {
    Name = "fargate-test/Private"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-002D-04f3b83abd7739edb_id}"
}

resource "aws_subnet" "tfer--subnet-002D-09be0282dd76bf790" {
  assign_ipv6_address_on_creation = "false"
  cidr_block                      = "10.0.0.0/24"
  map_public_ip_on_launch         = "false"

  tags = {
    Name = "fargate-test/Private"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-002D-04f3b83abd7739edb_id}"
}

resource "aws_subnet" "tfer--subnet-002D-f19a5cb9" {
  assign_ipv6_address_on_creation = "false"
  cidr_block                      = "172.31.32.0/20"
  map_public_ip_on_launch         = "true"
  vpc_id                          = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-002D-b9cecbde_id}"
}
