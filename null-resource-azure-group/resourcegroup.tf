resource "azurerm_resource_group" "resource_group" {
  name     = "null-resource"
  location = var.location

  tags = local.commmon_tags
}

resource "null_resource" "provisioner" {
  provisioner "local-exec" {
    command = "echo resource group id: ${azurerm_resource_group.resource_group.id} >> resource-group.id.txt"
  }
}