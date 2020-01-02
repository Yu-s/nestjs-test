resource "aws_lb_target_group" "tfer--nestjs-002D-api" {
  deregistration_delay = "300"

  health_check {
    enabled             = "true"
    healthy_threshold   = "5"
    interval            = "30"
    matcher             = "200"
    path                = "/"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = "5"
    unhealthy_threshold = "2"
  }

  name       = "nestjs-api"
  port       = "4000"
  protocol   = "HTTP"
  slow_start = "0"

  stickiness {
    cookie_duration = "86400"
    enabled         = "false"
    type            = "lb_cookie"
  }

  target_type = "ip"
  vpc_id      = "vpc-04f3b83abd7739edb"
}
