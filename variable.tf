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
  default="Premium"
}

variable "account_replication_type"{
  type=string
  default="ZRS"
}

variable "number"{
  type = list(string)
  default=["42", "77", "13", "98", "3", "64", "55", "27", "89", "6"]
}

variable "environment"{
  type=string
  default="prod"
}

variable "sentence" {
  type        = string
  default = "A sentence to convert to uppercase"
}
