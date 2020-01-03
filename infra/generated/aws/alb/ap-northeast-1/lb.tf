resource "aws_lb" "tfer--nestjs-002D-api" {
  enable_deletion_protection = "false"
  enable_http2               = "true"
  idle_timeout               = "60"
  internal                   = "false"
  ip_address_type            = "ipv4"
  load_balancer_type         = "application"
  name                       = "nestjs-api"
  security_groups            = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--alb-002D-fargate-002D-test_sg-002D-00c6ee7a09003c07f_id}"]

  subnet_mapping {
    subnet_id = "subnet-008d1b86200d30812"
  }

  subnet_mapping {
    subnet_id = "subnet-0250822fb6f465ba5"
  }

  subnets = ["subnet-008d1b86200d30812", "subnet-0250822fb6f465ba5"]
}
