variable "region" {
  description = "The Azure region where the resources will be created"
  type        = string
  default     = "East US"
}

variable "node_count" {
  description = "Number of nodes in the AKS cluster"
  type        = number
  default     = 2
}

variable "vm_size" {
  description = "Size of the VM for the node pool"
  type        = string
  default     = "Standard_DS2_v2"
}
