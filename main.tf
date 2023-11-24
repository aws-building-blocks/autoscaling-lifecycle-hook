# Autoscaling Lifecycle Hook
resource "aws_autoscaling_lifecycle_hook" "hook" {
  name                   = var.hook_name
  autoscaling_group_name = var.asg_name
  default_result         = var.default_result
  heartbeat_timeout      = var.heartbeat_timeout
  lifecycle_transition   = var.lifecycle_transition

  notification_metadata = jsonencode(var.notification_metadata)

  notification_target_arn = var.notification_target_arn
  role_arn                = var.role_arn
}
