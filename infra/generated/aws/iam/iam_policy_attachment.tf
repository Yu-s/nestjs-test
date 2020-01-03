resource "aws_iam_policy_attachment" "tfer--AWSCodePipelineServiceRole-002D-ap-002D-northeast-002D-1-002D-nestjs-002D-api" {
  name       = "AWSCodePipelineServiceRole-ap-northeast-1-nestjs-api"
  policy_arn = "arn:aws:iam::152341231368:policy/service-role/AWSCodePipelineServiceRole-ap-northeast-1-nestjs-api"
  roles      = ["AWSCodePipelineServiceRole-ap-northeast-1-nestjs-api"]
}

resource "aws_iam_policy_attachment" "tfer--CodeBuildBasePolicy-002D-nestjs-002D-api-002D-ap-002D-northeast-002D-1" {
  name       = "CodeBuildBasePolicy-nestjs-api-ap-northeast-1"
  policy_arn = "arn:aws:iam::152341231368:policy/service-role/CodeBuildBasePolicy-nestjs-api-ap-northeast-1"
  roles      = ["codebuild-nestjs-api"]
}

resource "aws_iam_policy_attachment" "tfer--CodeBuildBasePolicy-002D-nestjs-002D-api-002D-test-002D-ap-002D-northeast-002D-1" {
  name       = "CodeBuildBasePolicy-nestjs-api-test-ap-northeast-1"
  policy_arn = "arn:aws:iam::152341231368:policy/service-role/CodeBuildBasePolicy-nestjs-api-test-ap-northeast-1"
}

resource "aws_iam_policy_attachment" "tfer--CodeBuildBasePolicy-002D-nestjs-002D-api2-002D-ap-002D-northeast-002D-1" {
  name       = "CodeBuildBasePolicy-nestjs-api2-ap-northeast-1"
  policy_arn = "arn:aws:iam::152341231368:policy/service-role/CodeBuildBasePolicy-nestjs-api2-ap-northeast-1"
  roles      = ["codebuild-nestjs-api"]
}

resource "aws_iam_policy_attachment" "tfer--ecs-002D-datadog-002D-execute-002D-policy" {
  name       = "ecs-datadog-execute-policy"
  policy_arn = "arn:aws:iam::152341231368:policy/ecs-datadog-execute-policy"
  roles      = ["ecsTaskExecutionRole"]
}

resource "aws_iam_policy_attachment" "tfer--start-002D-pipeline-002D-execution-002D-ap-002D-northeast-002D-1-002D-nestjs-002D-api" {
  name       = "start-pipeline-execution-ap-northeast-1-nestjs-api"
  policy_arn = "arn:aws:iam::152341231368:policy/service-role/start-pipeline-execution-ap-northeast-1-nestjs-api"
  roles      = ["cwe-role-ap-northeast-1-nestjs-api"]
}
