locals {
  env_names = {
    dev     = "Development"
    staging = "Staging"
    prod    = "Production"
  }

  environment = lookup(local.env_names, "prod", "unknown")
}
