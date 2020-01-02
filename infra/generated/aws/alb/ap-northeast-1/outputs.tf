output "aws_lb_listener_tfer--arn-003A-aws-003A-elasticloadbalancing-003A-ap-002D-northeast-002D-1-003A-152341231368-003A-listener-002F-app-002F-nestjs-002D-api-002F-8349f6fe94005c41-002F-06c012672571f9b2_id" {
  value = "${aws_lb_listener.tfer--arn-003A-aws-003A-elasticloadbalancing-003A-ap-002D-northeast-002D-1-003A-152341231368-003A-listener-002F-app-002F-nestjs-002D-api-002F-8349f6fe94005c41-002F-06c012672571f9b2.id}"
}

output "aws_lb_target_group_tfer--nestjs-002D-api_id" {
  value = "${aws_lb_target_group.tfer--nestjs-002D-api.id}"
}

output "aws_lb_tfer--nestjs-002D-api_id" {
  value = "${aws_lb.tfer--nestjs-002D-api.id}"
}
