resource "aws_iam_role_policy" "tfer--AmazonSSMRoleForAutomationAssumeQuickSetup_SsmOnboardingInlinePolicy" {
  name = "SsmOnboardingInlinePolicy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "iam:CreateInstanceProfile",
        "iam:ListInstanceProfilesForRole",
        "iam:PassRole",
        "ec2:DescribeIamInstanceProfileAssociations",
        "iam:GetInstanceProfile",
        "ec2:DisassociateIamInstanceProfile",
        "ec2:AssociateIamInstanceProfile",
        "iam:AddRoleToInstanceProfile"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "AmazonSSMRoleForAutomationAssumeQuickSetup"
}
