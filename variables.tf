variable "AWS_ACCESS_KEY_ID" {
  type = string
}

variable "AWS_SECRET_ACCESS_KEY" {
  type = string
}

variable "AWS_SESSION_TOKEN" {
  type    = string
  default = null
}

variable "AWS_REGION" {
  type = string
}

variable "hook_name" {
  type        = string
  description = "(Required) Name of the lifecycle hook."
}

variable "asg_name" {
  type        = string
  description = "(Required) Name of the Auto Scaling group to which you want to assign the lifecycle hook"
}

variable "default_result" {
  type        = string
  default     = "CONTINUE"
  description = "(Optional) Defines the action the Auto Scaling group should take when the lifecycle hook timeout elapses or if an unexpected failure occurs. The value for this parameter can be either CONTINUE or ABANDON. The default value for this parameter is ABANDON."
}

variable "heartbeat_timeout" {
  type        = number
  default     = 2000
  description = "(Optional) Defines the amount of time, in seconds, that can elapse before the lifecycle hook times out. When the lifecycle hook times out, Auto Scaling performs the action defined in the DefaultResult parameter"
}

variable "lifecycle_transition" {
  type        = string
  default     = "autoscaling:EC2_INSTANCE_LAUNCHING"
  description = "(Required) Instance state to which you want to attach the lifecycle hook."
}

variable "notification_metadata" {
  type        = map(string)
  description = "(Optional) Contains additional information that you want to include any time Auto Scaling sends a message to the notification target."
}

variable "notification_target_arn" {
  type        = string
  description = "(Optional) ARN of the notification target that Auto Scaling will use to notify you when an instance is in the transition state for the lifecycle hook. This ARN target can be either an SQS queue or an SNS topic."
}

variable "role_arn" {
  type        = string
  description = "(Optional) ARN of the IAM role that allows the Auto Scaling group to publish to the specified notification target."
}
