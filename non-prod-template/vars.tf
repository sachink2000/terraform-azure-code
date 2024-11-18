variable "subscription_id" {
  type        = string
  description = "Subscription id of azure plan"
  default     = "subscription-id"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
  default     = "terraform-code-demo"
}

variable "resource_group_location" {
  type        = string
  description = "Location of the resource group"
  default     = "region-name"
}

variable "app_service_plan_name" {
  type        = string
  description = "App service plan name"
  default     = "terraform-code-demo-plan"
}

variable "kind" {
  type        = string
  description = "The kind of the App Service Plan to create. (Windows/Linux) "
  default     = "Linux"
}

variable "sku_tier" {
  type        = string
  description = "Specifies the plan's pricing tier. (Standard/Dynamic/PremiumContainer/Basic/PremiumV2)"
  default     = "Standard"
}

variable "sku_size" {
  type        = string
  description = "Specifies the plan's instance size. (F1/B1/S1/S2/S3/P1V2/P2V2)"
  default     = "plan-details"
}

variable "app_service_name" {
  type        = string
  description = "App service name"
  default     = "terraform-code-demo-preprod"
}

variable "deployment_slots" {
  type        = list(string)
  description = "Provide the list of deployment slots."
  default     = ["dev", "qa"]
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