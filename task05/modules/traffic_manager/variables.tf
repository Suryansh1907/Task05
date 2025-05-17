variable "resource_groups" {
  description = "Resource groups configuration"
  type        = map(any)
}

variable "app_service_plans" {
  description = "App Service Plans configuration"
  type        = map(any)
}

variable "app_services" {
  description = "App Services configuration"
  type        = map(any)
}

variable "traffic_manager" {
  description = "Traffic Manager profile configuration"
  type        = any
}

variable "tags" {
  description = "Common tags for all resources"
  type        = map(string)
}

variable "allowed_ip" {
  description = "Allowed IP address for verification agent"
  type        = string
}

# If you have allow-ip and allow-tm variables, declare them too if used
variable "allow-ip" {
  description = "Allowed IP for validation"
  type        = string
}

variable "allow-tm" {
  description = "Traffic Manager profile name for validation"
  type        = string
}
