resource "aws_ecs_task_definition" "tfer--task-002D-definition-002F-nestjs-002D-test" {
  container_definitions    = "[{\"cpu\":0,\"environment\":[],\"essential\":true,\"image\":\"152341231368.dkr.ecr.ap-northeast-1.amazonaws.com/nestjs-test\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/nestjs-test\",\"awslogs-region\":\"ap-northeast-1\",\"awslogs-stream-prefix\":\"ecs\"}},\"memoryReservation\":128,\"mountPoints\":[],\"name\":\"nestjs-test\",\"portMappings\":[{\"containerPort\":80,\"hostPort\":80,\"protocol\":\"tcp\"},{\"containerPort\":4000,\"hostPort\":4000,\"protocol\":\"tcp\"}],\"secrets\":[{\"name\":\"TYPEORM_HOST\",\"valueFrom\":\"typeorm_host\"},{\"name\":\"TYPEORM_PASSWORD\",\"valueFrom\":\"typeorm-password\"},{\"name\":\"TYPEORM_USERNAME\",\"valueFrom\":\"typeorm_username\"}],\"volumesFrom\":[]},{\"cpu\":10,\"environment\":[{\"name\":\"ECS_FARGATE\",\"value\":\"true\"}],\"essential\":true,\"image\":\"datadog/agent:latest\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/nestjs-test\",\"awslogs-region\":\"ap-northeast-1\",\"awslogs-stream-prefix\":\"ecs\"}},\"memoryReservation\":256,\"mountPoints\":[],\"name\":\"datadog-test\",\"portMappings\":[],\"secrets\":[{\"name\":\"DD_API_KEY\",\"valueFrom\":\"datadog-api-key\"}],\"volumesFrom\":[]}]"
  cpu                      = "256"
  execution_role_arn       = "arn:aws:iam::152341231368:role/ecsTaskExecutionRole"
  family                   = "nestjs-test"
  memory                   = "512"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  task_role_arn            = "arn:aws:iam::152341231368:role/ecsTaskExecutionRole"
}
