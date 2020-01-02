resource "aws_ecs_cluster" "tfer--fargate-002D-test" {
  capacity_providers = ["FARGATE", "FARGATE_SPOT"]
  name               = "fargate-test"

  setting {
    name  = "containerInsights"
    value = "disabled"
  }
}
