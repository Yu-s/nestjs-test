resource "aws_iam_policy" "tfer--AWSCodePipelineServiceRole-002D-ap-002D-northeast-002D-1-002D-nestjs-002D-api" {
  description = "Policy used in trust relationship with CodePipeline"
  name        = "AWSCodePipelineServiceRole-ap-northeast-1-nestjs-api"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "iam:PassRole"
      ],
      "Condition": {
        "StringEqualsIfExists": {
          "iam:PassedToService": [
            "cloudformation.amazonaws.com",
            "elasticbeanstalk.amazonaws.com",
            "ec2.amazonaws.com",
            "ecs-tasks.amazonaws.com"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codecommit:CancelUploadArchive",
        "codecommit:GetBranch",
        "codecommit:GetCommit",
        "codecommit:GetUploadArchiveStatus",
        "codecommit:UploadArchive"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codedeploy:CreateDeployment",
        "codedeploy:GetApplication",
        "codedeploy:GetApplicationRevision",
        "codedeploy:GetDeployment",
        "codedeploy:GetDeploymentConfig",
        "codedeploy:RegisterApplicationRevision"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codestar-connections:UseConnection"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "elasticbeanstalk:*",
        "ec2:*",
        "elasticloadbalancing:*",
        "autoscaling:*",
        "cloudwatch:*",
        "s3:*",
        "sns:*",
        "cloudformation:*",
        "rds:*",
        "sqs:*",
        "ecs:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "lambda:InvokeFunction",
        "lambda:ListFunctions"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "opsworks:CreateDeployment",
        "opsworks:DescribeApps",
        "opsworks:DescribeCommands",
        "opsworks:DescribeDeployments",
        "opsworks:DescribeInstances",
        "opsworks:DescribeStacks",
        "opsworks:UpdateApp",
        "opsworks:UpdateStack"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:CreateStack",
        "cloudformation:DeleteStack",
        "cloudformation:DescribeStacks",
        "cloudformation:UpdateStack",
        "cloudformation:CreateChangeSet",
        "cloudformation:DeleteChangeSet",
        "cloudformation:DescribeChangeSet",
        "cloudformation:ExecuteChangeSet",
        "cloudformation:SetStackPolicy",
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codebuild:BatchGetBuilds",
        "codebuild:StartBuild"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "devicefarm:ListProjects",
        "devicefarm:ListDevicePools",
        "devicefarm:GetRun",
        "devicefarm:GetUpload",
        "devicefarm:CreateUpload",
        "devicefarm:ScheduleRun"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "servicecatalog:ListProvisioningArtifacts",
        "servicecatalog:CreateProvisioningArtifact",
        "servicecatalog:DescribeProvisioningArtifact",
        "servicecatalog:DeleteProvisioningArtifact",
        "servicecatalog:UpdateProduct"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "ecr:DescribeImages"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--CodeBuildBasePolicy-002D-nestjs-002D-api-002D-ap-002D-northeast-002D-1" {
  description = "Policy used in trust relationship with CodeBuild"
  name        = "CodeBuildBasePolicy-nestjs-api-ap-northeast-1"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:ap-northeast-1:152341231368:log-group:/aws/codebuild/nestjs-api",
        "arn:aws:logs:ap-northeast-1:152341231368:log-group:/aws/codebuild/nestjs-api:*"
      ]
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketAcl",
        "s3:GetBucketLocation"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipeline-ap-northeast-1-*"
      ]
    },
    {
      "Action": [
        "codebuild:CreateReportGroup",
        "codebuild:CreateReport",
        "codebuild:UpdateReport",
        "codebuild:BatchPutTestCases"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:codebuild:ap-northeast-1:152341231368:report-group/nestjs-api-*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--CodeBuildBasePolicy-002D-nestjs-002D-api-002D-test-002D-ap-002D-northeast-002D-1" {
  description = "Policy used in trust relationship with CodeBuild"
  name        = "CodeBuildBasePolicy-nestjs-api-test-ap-northeast-1"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:ap-northeast-1:152341231368:log-group:/aws/codebuild/nestjs-api-test",
        "arn:aws:logs:ap-northeast-1:152341231368:log-group:/aws/codebuild/nestjs-api-test:*"
      ]
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketAcl",
        "s3:GetBucketLocation"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipeline-ap-northeast-1-*"
      ]
    },
    {
      "Action": [
        "codebuild:CreateReportGroup",
        "codebuild:CreateReport",
        "codebuild:UpdateReport",
        "codebuild:BatchPutTestCases"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:codebuild:ap-northeast-1:152341231368:report-group/nestjs-api-test-*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--CodeBuildBasePolicy-002D-nestjs-002D-api2-002D-ap-002D-northeast-002D-1" {
  description = "Policy used in trust relationship with CodeBuild"
  name        = "CodeBuildBasePolicy-nestjs-api2-ap-northeast-1"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:ap-northeast-1:152341231368:log-group:/aws/codebuild/nestjs-api2",
        "arn:aws:logs:ap-northeast-1:152341231368:log-group:/aws/codebuild/nestjs-api2:*"
      ]
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketAcl",
        "s3:GetBucketLocation"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipeline-ap-northeast-1-*"
      ]
    },
    {
      "Action": [
        "codebuild:CreateReportGroup",
        "codebuild:CreateReport",
        "codebuild:UpdateReport",
        "codebuild:BatchPutTestCases"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:codebuild:ap-northeast-1:152341231368:report-group/nestjs-api2-*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--ecs-002D-datadog-002D-execute-002D-policy" {
  name = "ecs-datadog-execute-policy"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecs:ListClusters",
        "ecs:ListContainerInstances",
        "ecs:DescribeContainerInstances"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--start-002D-pipeline-002D-execution-002D-ap-002D-northeast-002D-1-002D-nestjs-002D-api" {
  description = "Allows Amazon CloudWatch Events to automatically start a new execution in the nestjs-api pipeline when a change occurs"
  name        = "start-pipeline-execution-ap-northeast-1-nestjs-api"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "codepipeline:StartPipelineExecution"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:codepipeline:ap-northeast-1:152341231368:nestjs-api"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}
