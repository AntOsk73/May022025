variable "subscription_id"{
  type=string
}

variable "client_secret"{
  type=string
}

variable "tenant_id"{
  type=string
}

variable "client_id"{
  type=string
}
  
variable "antoinestorageaccount"{
  type=string
  default="antoskstoragemay"
}

variable "account_tier"{
  type=string
  default="premium"
}

variable "account_replication_type"{
  type=string
  default="ZRS"
}

variable "environment = "dev""{
  type=string
  default="prod"
}
