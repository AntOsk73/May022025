variable "storage_accounts" {
  type = map(string)
  default = {
    "storage1" = "beirut"
    "storage2" = "Tyr"
    "storage3" = "Sidon"
    "storage4" = "Byblos"
  }
}
