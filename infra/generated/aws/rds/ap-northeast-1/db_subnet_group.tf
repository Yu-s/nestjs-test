resource "aws_db_subnet_group" "tfer--default-002D-vpc-002D-04f3b83abd7739edb" {
  description = "Created from the RDS Management Console"
  name        = "default-vpc-04f3b83abd7739edb"
  subnet_ids  = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-002D-04a366ce1a6b5ee9f_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-002D-09be0282dd76bf790_id}"]
}

resource "aws_db_subnet_group" "tfer--default-002D-vpc-002D-b9cecbde" {
  description = "Created from the RDS Management Console"
  name        = "default-vpc-b9cecbde"
  subnet_ids  = ["subnet-116a5a4a", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-002D-f19a5cb9_id}", "subnet-03a06928"]
}
