locals {
  rg_names = ["dev-rg", "test-rg", "prod-rg"]
}

for_each = toset(local.rg_names)
