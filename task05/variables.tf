
variable "resource_groups" {
  description = "Map of resource group objects with name and location"
  type = map(object({
    name     = string
    location = string
  }))
}

variable "app_service_plans" {
  description = "Map of App Service Plan properties"
  type = map(object({
    name           = string
    location       = string
    resource_group = string
    sku_name       = string
    worker_count   = number
  }))
}

variable "app_services" {
  description = "Map of App Service properties"
  type = map(object({
    name             = string
    location         = string
    resource_group   = string
    app_service_plan = string
  }))
}


variable "traffic_manager" {
  description = "Traffic Manager profile configuration"
  type = object({
    name           = string
    routing_method = string
    location       = string
  })
}

variable "tags" {
  description = "Common tags for all resources"
  type        = map(string)
}

variable "allowed_ip" {
  description = "Allowed IP address for verification agent"
  type        = string
}


variable "allow_ip_rule_name" {
  description = "Name of the allow IP access restriction rule"
  type        = string
}

variable "allow_tm_rule_name" {
  description = "Name of the allow Traffic Manager service tag access restriction rule"
  type        = string
}
