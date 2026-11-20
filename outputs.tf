output "state_machine_name" {
  description = "Name of the planned Step Functions state machine."
  value       = aws_sfn_state_machine.order_workflow.name
}

output "state_machine_arn" {
  description = "ARN of the state machine after deployment."
  value       = aws_sfn_state_machine.order_workflow.arn
}

output "iam_role_name" {
  description = "Name of the planned IAM execution role."
  value       = aws_iam_role.stepfunctions.name
}
