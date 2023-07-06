# variable "account_id" {
#   description = "The account ID the application reports to"
#   type        = number
# }
# variable "description" {
#   type = string
# }
# variable "url" {
#   type = string
# }
# variable "violation_time_limit_seconds" {
#   type = number
# }
# variable "operator" {
#   type = string
# }
# variable "threshold" {
#   type = number
# }
# variable "threshold_duration" {
#   type = number
# }
# variable "threshold_occurrences" {
#   type = string
# }
# variable "enabled" {
#   type = bool
# }
# variable "Name" {
#   type = list(any)
# }
# variable "policy_name" {
#   type = string
# }

variable "data" {
  type = list(any)
}