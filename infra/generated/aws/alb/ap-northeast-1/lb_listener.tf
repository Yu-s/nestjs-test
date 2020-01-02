resource "aws_lb_listener" "tfer--arn-003A-aws-003A-elasticloadbalancing-003A-ap-002D-northeast-002D-1-003A-152341231368-003A-listener-002F-app-002F-nestjs-002D-api-002F-8349f6fe94005c41-002F-06c012672571f9b2" {
  default_action {
    order            = "1"
    target_group_arn = "arn:aws:elasticloadbalancing:ap-northeast-1:152341231368:targetgroup/nestjs-api/69214b23ef84e1c7"
    type             = "forward"
  }

  load_balancer_arn = "${data.terraform_remote_state.alb.outputs.aws_lb_tfer--nestjs-002D-api_id}"
  port              = "80"
  protocol          = "HTTP"
}
