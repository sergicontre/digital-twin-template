# Commons
variable "location" {
  description = "(Required) Location of the all services to be created"
  default="westeurope"
}

variable "resource_group_name" {
  description = "(Required) Resource group name of the all services to be created"
  default= "DTSandbox"
}

variable "tags" {
  description = "(Required) Tags to be applied to the all services to be created"
  default = { Project = "DigitalTwinSandbox" }
}

# Azure Digital Twin
variable "dt_name"{
  description = "(Required) Name of Digital Twins instance"
  default = "dt-sandbox"
}