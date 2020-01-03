resource "aws_db_subnet_group" "tfer--default-002D-vpc-002D-04f3b83abd7739edb" {
  description = "Created from the RDS Management Console"
  name        = "default-vpc-04f3b83abd7739edb"
  subnet_ids  = ["subnet-04a366ce1a6b5ee9f", "subnet-09be0282dd76bf790"]
}

resource "aws_db_subnet_group" "tfer--default-002D-vpc-002D-b9cecbde" {
  description = "Created from the RDS Management Console"
  name        = "default-vpc-b9cecbde"
  subnet_ids  = ["subnet-03a06928", "subnet-116a5a4a", "subnet-f19a5cb9"]
}
