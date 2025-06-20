// Required Variables
//**********************************************************************************************
variable "resource_group_name" {
  type        = string
  description = "(Required) The name of the resource group in which to create the resources"
}

variable "location" {
  type        = string
  description = "(Required) Specifies the supported Azure location where the resource exists"
}

variable "resource_tags" {
  type        = map(string)
  description = "(Optional) Tags for resources"
  default     = {}
}

variable "deployment_tags" {
  type        = map(string)
  description = "(Optional) Tags for deployment"
  default     = {}
}
//**********************************************************************************************


// ALB Variables
//**********************************************************************************************
variable "name" {
  type        = string
  description = "(Required) The name of the Application Load Balancer"
}

variable "subnet_id" {
  type        = string
  description = "(Required) The ID of the subnet to associate with the Application Load Balancer"
}
//**********************************************************************************************