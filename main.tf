resource "newrelic_alert_policy" "alert" {
  name = "NamanPolicy"
}
# Add a condition
resource "newrelic_nrql_alert_condition" "testcondition" {
  count                        = length(var.data)
  policy_id                    = newrelic_alert_policy.alert.id
  type                         = "static"
  name                         = var.data[count.index]["name"]
  description                  = var.data[count.index]["description"]
  runbook_url                  = var.data[count.index]["url"]
  enabled                      = var.data[count.index]["enabled"]
  violation_time_limit_seconds = var.data[count.index]["violation_time_limit_seconds"]


  nrql {
    query = "SELECT count(*) FROM Transaction WHERE httpResponseCode != '200'"
  }


  critical {
    operator              = var.data[count.index]["operator"]
    threshold             = var.data[count.index]["threshold"]
    threshold_duration    = var.data[count.index]["threshold_duration"]
    threshold_occurrences = var.data[count.index]["threshold_occurrences"]
  }
}