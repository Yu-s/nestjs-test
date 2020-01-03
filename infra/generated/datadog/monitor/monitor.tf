resource "datadog_monitor" "tfer--monitor_14741037" {
  evaluation_delay    = "0"
  id                  = "14741037"
  include_tags        = "false"
  locked              = "false"
  message             = "Triggers if any host's clock goes out of sync with the time given by NTP. The offset threshold is configured in the Agent's `ntp.yaml` file.\n\nPlease read the [KB article](https://docs.datadoghq.com/agent/faq/network-time-protocol-ntp-offset-issues) on NTP Offset issues for more details on cause and resolution."
  name                = "[Auto] Clock in sync with NTP"
  new_host_delay      = "0"
  no_data_timeframe   = "0"
  notify_audit        = "false"
  notify_no_data      = "false"
  query               = "\"ntp.in_sync\".over(\"*\").last(2).count_by_status()"
  renotify_interval   = "0"
  require_full_window = "false"

  thresholds = {
    critical = "1"
    ok       = "1"
    warning  = "1"
  }

  timeout_h = "0"
  type      = "service check"
}
