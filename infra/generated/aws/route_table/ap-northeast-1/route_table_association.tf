resource "aws_route_table_association" "tfer--subnet-002D-008d1b86200d30812" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-002D-0e7b3db92808b9c9d_id}"
  subnet_id      = "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-002D-008d1b86200d30812_id}"
}

resource "aws_route_table_association" "tfer--subnet-002D-0250822fb6f465ba5" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-002D-0e7b3db92808b9c9d_id}"
  subnet_id      = "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-002D-0250822fb6f465ba5_id}"
}

resource "aws_route_table_association" "tfer--subnet-002D-04a366ce1a6b5ee9f" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-002D-0e226bda9524c6b46_id}"
  subnet_id      = "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-002D-04a366ce1a6b5ee9f_id}"
}

resource "aws_route_table_association" "tfer--subnet-002D-09be0282dd76bf790" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-002D-0e226bda9524c6b46_id}"
  subnet_id      = "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-002D-09be0282dd76bf790_id}"
}
