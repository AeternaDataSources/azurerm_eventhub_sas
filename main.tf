data "azurerm_eventhub_sas" "eventhub_sas_lookup" {
  for_each = var.eventhub_sas_lookup

  connection_string = each.value.connection_string
  expiry            = each.value.expiry
}

