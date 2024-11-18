variable "subscription_id" {
  type        = string
  description = "Subscription id of azure plan"
  default     = "subscription-id"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
  default     = "terraform-demo-rg"
}

variable "resource_group_location" {
  type        = string
  description = "Location of the resource group"
  default     = "region"
}

variable "app_service_plan_name" {
  type        = string
  description = "App service plan name"
  default     = "terraform-demo-appsrvplan"
}

variable "kind" {
  type        = string
  description = "The kind of the App Service Plan to create. (Windows/Linux) "
  default     = "Linux"
}

variable "sku_tier" {
  type        = string
  description = "Specifies the plan's pricing tier. (Standard/Dynamic/PremiumContainer/Basic/PremiumV2)"
  default     = "pricing-tier"
}

variable "sku_size" {
  type        = string
  description = "Specifies the plan's instance size. (F1/B1/S1/S2/S3/P1V2/P2V2)"
  default     = "instance-size"
}

variable "app_service_name" {
  type        = string
  description = "App service name"
  default     = "terraform-demo"
}

variable "deployment_slots" {
  type        = list(string)
  description = "Provide the list of deployment slots."
  default     = []
}

variable "subscription_id" {
  type        = string
  description = "Subscription id of azure plan"
  default     = "subscription-id"
}

variable "users" {
  default = [
    "user1-object-id",
    "user2-object-id"
  ]
}
