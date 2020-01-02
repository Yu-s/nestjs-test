resource "aws_ecs_service" "tfer--fargate-002D-test_nestjs-002D-api-002D-test" {
  cluster = "fargate-test"

  deployment_controller {
    type = "ECS"
  }

  deployment_maximum_percent         = "200"
  deployment_minimum_healthy_percent = "100"
  desired_count                      = "0"
  enable_ecs_managed_tags            = "false"
  health_check_grace_period_seconds  = "0"
  launch_type                        = "FARGATE"

  load_balancer {
    container_name   = "nestjs-test"
    container_port   = "4000"
    target_group_arn = "arn:aws:elasticloadbalancing:ap-northeast-1:152341231368:targetgroup/nestjs-api/69214b23ef84e1c7"
  }

  name = "nestjs-api-test"

  network_configuration {
    assign_public_ip = "true"
    security_groups  = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--nestjs-002D-api_sg-002D-0b00088e77cda715b_id}"]
    subnets          = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-002D-0250822fb6f465ba5_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-002D-008d1b86200d30812_id}"]
  }

  platform_version    = "LATEST"
  scheduling_strategy = "REPLICA"

  service_registries {
    container_port = "0"
    port           = "0"
    registry_arn   = "arn:aws:servicediscovery:ap-northeast-1:152341231368:service/srv-emzwrzqdd2zqousn"
  }

  task_definition = "${data.terraform_remote_state.ecs.outputs.aws_ecs_task_definition_tfer--task-002D-definition-002F-nestjs-002D-test_arn}"
}
