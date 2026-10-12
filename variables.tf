variable "service_integrations" {
  description = <<EOT
Map of service_integrations, attributes below
Required:
    - service
Optional:
    - email_filter_mode
    - email_incident_creation
    - email_parsing_fallback
    - integration_email
    - integration_key
    - name
    - type
    - vendor
    - email_filter (block):
        - body_mode (optional)
        - body_regex (optional)
        - from_email_mode (optional)
        - from_email_regex (optional)
        - subject_mode (optional)
        - subject_regex (optional)
    - email_parser (block):
        - action (required)
        - match_predicate (required, block):
            - predicate (optional, block):
                - matcher (optional)
                - part (optional)
                - predicate (optional, block):
                    - matcher (required)
                    - part (required)
                    - type (required)
                - type (required)
            - type (required)
        - value_extractor (optional, block):
            - ends_before (optional)
            - part (required)
            - regex (optional)
            - starts_after (optional)
            - type (required)
            - value_name (required)
EOT

  type = map(object({
    service                 = string
    email_filter_mode       = optional(string)
    email_incident_creation = optional(string)
    email_parsing_fallback  = optional(string)
    integration_email       = optional(string)
    integration_key         = optional(string)
    name                    = optional(string)
    type                    = optional(string)
    vendor                  = optional(string)
    email_filter = optional(list(object({
      body_mode        = optional(string)
      body_regex       = optional(string)
      from_email_mode  = optional(string)
      from_email_regex = optional(string)
      subject_mode     = optional(string)
      subject_regex    = optional(string)
    })))
    email_parser = optional(list(object({
      action = string
      match_predicate = object({
        predicate = optional(list(object({
          matcher = optional(string)
          part    = optional(string)
          predicate = optional(list(object({
            matcher = string
            part    = string
            type    = string
          })))
          type = string
        })))
        type = string
      })
      value_extractor = optional(list(object({
        ends_before  = optional(string)
        part         = string
        regex        = optional(string)
        starts_after = optional(string)
        type         = string
        value_name   = string
      })))
    })))
  }))
  # Note: 12 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

