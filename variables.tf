variable "eventhub_sas_lookup" {
  description = <<EOT
Map of eventhub_sas_lookup, attributes below
Required:
    - connection_string
    - expiry
EOT

  type = map(object({
    connection_string = string
    expiry            = string
  }))
}

