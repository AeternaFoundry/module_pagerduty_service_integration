output "service_integrations_id" {
  description = "Map of id values across all service_integrations, keyed the same as var.service_integrations except keys with no id are omitted"
  value       = { for k, v in pagerduty_service_integration.service_integrations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "service_integrations_email_filter" {
  description = "Map of email_filter values across all service_integrations, keyed the same as var.service_integrations except keys with no email_filter are omitted"
  value       = { for k, v in pagerduty_service_integration.service_integrations : k => v.email_filter if v.email_filter != null && length(v.email_filter) > 0 }
}
output "service_integrations_email_filter_mode" {
  description = "Map of email_filter_mode values across all service_integrations, keyed the same as var.service_integrations except keys with no email_filter_mode are omitted"
  value       = { for k, v in pagerduty_service_integration.service_integrations : k => v.email_filter_mode if v.email_filter_mode != null && length(v.email_filter_mode) > 0 }
}
output "service_integrations_email_incident_creation" {
  description = "Map of email_incident_creation values across all service_integrations, keyed the same as var.service_integrations except keys with no email_incident_creation are omitted"
  value       = { for k, v in pagerduty_service_integration.service_integrations : k => v.email_incident_creation if v.email_incident_creation != null && length(v.email_incident_creation) > 0 }
}
output "service_integrations_email_parser" {
  description = "Map of email_parser values across all service_integrations, keyed the same as var.service_integrations except keys with no email_parser are omitted"
  value       = { for k, v in pagerduty_service_integration.service_integrations : k => v.email_parser if v.email_parser != null && length(v.email_parser) > 0 }
}
output "service_integrations_email_parsing_fallback" {
  description = "Map of email_parsing_fallback values across all service_integrations, keyed the same as var.service_integrations except keys with no email_parsing_fallback are omitted"
  value       = { for k, v in pagerduty_service_integration.service_integrations : k => v.email_parsing_fallback if v.email_parsing_fallback != null && length(v.email_parsing_fallback) > 0 }
}
output "service_integrations_html_url" {
  description = "Map of html_url values across all service_integrations, keyed the same as var.service_integrations except keys with no html_url are omitted"
  value       = { for k, v in pagerduty_service_integration.service_integrations : k => v.html_url if v.html_url != null && length(v.html_url) > 0 }
}
output "service_integrations_integration_email" {
  description = "Map of integration_email values across all service_integrations, keyed the same as var.service_integrations except keys with no integration_email are omitted"
  value       = { for k, v in pagerduty_service_integration.service_integrations : k => v.integration_email if v.integration_email != null && length(v.integration_email) > 0 }
}
output "service_integrations_integration_key" {
  description = "Map of integration_key values across all service_integrations, keyed the same as var.service_integrations except keys with no integration_key are omitted"
  value       = { for k, v in pagerduty_service_integration.service_integrations : k => v.integration_key if v.integration_key != null && length(v.integration_key) > 0 }
}
output "service_integrations_name" {
  description = "Map of name values across all service_integrations, keyed the same as var.service_integrations except keys with no name are omitted"
  value       = { for k, v in pagerduty_service_integration.service_integrations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "service_integrations_service" {
  description = "Map of service values across all service_integrations, keyed the same as var.service_integrations except keys with no service are omitted"
  value       = { for k, v in pagerduty_service_integration.service_integrations : k => v.service if v.service != null && length(v.service) > 0 }
}
output "service_integrations_type" {
  description = "Map of type values across all service_integrations, keyed the same as var.service_integrations except keys with no type are omitted"
  value       = { for k, v in pagerduty_service_integration.service_integrations : k => v.type if v.type != null && length(v.type) > 0 }
}
output "service_integrations_vendor" {
  description = "Map of vendor values across all service_integrations, keyed the same as var.service_integrations except keys with no vendor are omitted"
  value       = { for k, v in pagerduty_service_integration.service_integrations : k => v.vendor if v.vendor != null && length(v.vendor) > 0 }
}

