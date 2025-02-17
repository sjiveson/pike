resource "azurerm_role_definition" "example" {
  role_definition_id = local.uuid
  name               = "my-custom-role-definition-pike"
  scope              = data.azurerm_subscription.primary.id

  permissions {
    actions = [
      "Microsoft.Compute/diskEncryptionSets/write",
      "Microsoft.Compute/diskEncryptionSets/delete",
      "Microsoft.Compute/diskEncryptionSets/read",
      "Microsoft.KeyVault/vaults/read"
    ]
    not_actions = []
  }

  assignable_scopes = [
    data.azurerm_subscription.primary.id,
  ]
}
