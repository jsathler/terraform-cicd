variable "project_name" {
  description = "The project short name. This string will be used to compose the Azure resource names"
  type        = string
}

variable "environment" {
  description = "The project short environment name. This string will be used to compose the Azure resource names. It is recommended to use the same as used in github environments"
  type        = string
}

variable "location" {
  description = "The Azure region where resources will be deployed"
  type        = string
  default     = "northeurope"
}
