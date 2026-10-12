resource "pagerduty_service_integration" "service_integrations" {
  for_each = var.service_integrations

  service                 = each.value.service
  email_filter_mode       = each.value.email_filter_mode
  email_incident_creation = each.value.email_incident_creation
  email_parsing_fallback  = each.value.email_parsing_fallback
  integration_email       = each.value.integration_email
  integration_key         = each.value.integration_key
  name                    = each.value.name
  type                    = each.value.type
  vendor                  = each.value.vendor

  dynamic "email_filter" {
    for_each = each.value.email_filter != null ? each.value.email_filter : []
    content {
      body_mode        = email_filter.value.body_mode
      body_regex       = email_filter.value.body_regex
      from_email_mode  = email_filter.value.from_email_mode
      from_email_regex = email_filter.value.from_email_regex
      subject_mode     = email_filter.value.subject_mode
      subject_regex    = email_filter.value.subject_regex
    }
  }

  dynamic "email_parser" {
    for_each = each.value.email_parser != null ? each.value.email_parser : []
    content {
      action = email_parser.value.action
      match_predicate {
        dynamic "predicate" {
          for_each = email_parser.value.match_predicate.predicate != null ? email_parser.value.match_predicate.predicate : []
          content {
            matcher = predicate.value.matcher
            part    = predicate.value.part
            dynamic "predicate" {
              for_each = predicate.value.predicate != null ? predicate.value.predicate : []
              content {
                matcher = predicate.value.matcher
                part    = predicate.value.part
                type    = predicate.value.type
              }
            }
            type = predicate.value.type
          }
        }
        type = email_parser.value.match_predicate.type
      }
      dynamic "value_extractor" {
        for_each = email_parser.value.value_extractor != null ? email_parser.value.value_extractor : []
        content {
          ends_before  = value_extractor.value.ends_before
          part         = value_extractor.value.part
          regex        = value_extractor.value.regex
          starts_after = value_extractor.value.starts_after
          type         = value_extractor.value.type
          value_name   = value_extractor.value.value_name
        }
      }
    }
  }
}

