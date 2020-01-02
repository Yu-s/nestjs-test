resource "aws_main_route_table_association" "tfer--vpc-002D-04f3b83abd7739edb" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-002D-0e7b3db92808b9c9d_id}"
  vpc_id         = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-002D-04f3b83abd7739edb_id}"
}

resource "aws_main_route_table_association" "tfer--vpc-002D-b9cecbde" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-002D-b067f5d6_id}"
  vpc_id         = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-002D-b9cecbde_id}"
}
