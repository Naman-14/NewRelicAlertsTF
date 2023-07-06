# Configure terraform
terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
    }
  }
}

# Configure the New Relic provider
provider "newrelic" {
  account_id = "3999429"
  api_key = "NRAK-TZY5U3EGB7262LJA0RRYS7JYM41"    # Usually prefixed with 'NRAK'
  region = "US"                    # Valid regions are US and EU
}