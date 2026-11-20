data "aws_iam_policy_document" "stepfunctions_trust" {
  statement {
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["states.amazonaws.com"]
    }

    actions = ["sts:AssumeRole"]
  }
}

resource "aws_iam_role" "stepfunctions" {
  name               = "terraform-stepfunctions-lab-role"
  assume_role_policy = data.aws_iam_policy_document.stepfunctions_trust.json

  tags = {
    Project     = "terraform-aws-stepfunctions-lab"
    Environment = "learning"
    ManagedBy   = "Terraform"
  }
}
