resource "aws_internet_gateway" "tfer--igw-002D-0eef9775bee330cd2" {
  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-002D-04f3b83abd7739edb_id}"
}

resource "aws_internet_gateway" "tfer--igw-002D-da5a5abe" {
  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-002D-b9cecbde_id}"
}
