resource "azurerm_key_vault_key" "key" {
  name         = "hsm-key"
  key_vault_id = azurerm_key_vault.kv.id
  key_type     = "RSA-HSM"
  key_size     = 2048

  key_opts = ["unwrapKey", "wrapKey"]
}
