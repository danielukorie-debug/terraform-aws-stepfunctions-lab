resource "aws_sfn_state_machine" "order_workflow" {
  name       = "terraform-order-workflow"
  role_arn   = aws_iam_role.stepfunctions.arn
  definition = file("${path.module}/order-workflow.asl.json")
  type       = "STANDARD"

  tags = {
    Project     = "terraform-aws-stepfunctions-lab"
    Environment = "learning"
    ManagedBy   = "Terraform"
  }
}
