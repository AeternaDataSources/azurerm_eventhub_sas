output "eventhub_sas_lookup_id" {
  description = "Map of id values across all eventhub_sas_lookup, keyed the same as var.eventhub_sas_lookup"
  value       = { for k, v in data.azurerm_eventhub_sas.eventhub_sas_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "eventhub_sas_lookup_connection_string" {
  description = "Map of connection_string values across all eventhub_sas_lookup, keyed the same as var.eventhub_sas_lookup"
  value       = { for k, v in data.azurerm_eventhub_sas.eventhub_sas_lookup : k => v.connection_string if v.connection_string != null && length(v.connection_string) > 0 }
  sensitive   = true
}
output "eventhub_sas_lookup_expiry" {
  description = "Map of expiry values across all eventhub_sas_lookup, keyed the same as var.eventhub_sas_lookup"
  value       = { for k, v in data.azurerm_eventhub_sas.eventhub_sas_lookup : k => v.expiry if v.expiry != null && length(v.expiry) > 0 }
}
output "eventhub_sas_lookup_sas" {
  description = "Map of sas values across all eventhub_sas_lookup, keyed the same as var.eventhub_sas_lookup"
  value       = { for k, v in data.azurerm_eventhub_sas.eventhub_sas_lookup : k => v.sas if v.sas != null && length(v.sas) > 0 }
  sensitive   = true
}

