variable "location" {
  description = "região"
  type        = string
  default     = "Brazil South"

}

variable "account_tier" {
  description = "Tier da storage account na azure"
  type        = string
  default     = "Standard"

}

variable "account_replication_type" {
  description = "Tipo de replicação de dados"
  type        = string
  default     = "LRS"
}

#variable "exemplo" {
#    description = ""
#    type = ""
#    default = ""
#   

#}