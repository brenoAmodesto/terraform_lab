resource "azurerm_resource_group" "primeiro_grupo_recurso" {
  name     = "remote-state"
  location = var.location

  tags = local.commmon_tags
}

resource "azurerm_storage_account" "primeiro_storage_conta" {
  name                     = "brenoremotestate"
  resource_group_name      = azurerm_resource_group.primeiro_grupo_recurso.name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  blob_properties {
    versioning_enabled = true
  }
  tags = local.commmon_tags
}


resource "azurerm_storage_container" "primeiro_container" {
  name                 = "remotestate"
  storage_account_name = azurerm_storage_account.primeiro_storage_conta.name
}

