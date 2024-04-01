variable "rg_we_tf_intro_name" {
  description = "nome del rg che ospita l'infrastruttura"
  default = "rg_we_tf_intro"
  type = string
}

variable "sa_we_tf_intro_name" {
  description = "Nome dello storage account che creeremmo"
}

variable "sa_we_tf_intro_account_replication_type" {
  description = "Tipo di replica utilizzata dallo storage account che creeremmo"
  default = "LRS"
}

variable "sa_we_account_tier" {
  description = "tier dello storage account che creeremmo"
}