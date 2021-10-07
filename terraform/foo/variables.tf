variable "instance_count" {
  type        = number
  description = "The number of instances to deploy."
  # If the convention is not to use the default workspace, delete the default
  # value.
  default     = 5
}
